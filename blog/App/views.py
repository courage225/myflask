#!/usr/bin/env python
# encoding: utf-8
'''
@desc:    
@author:  
@contact: 
@file: views.py
@time: 2020/2/28 9:22 上午
'''
import hashlib
from random import randint

from flask import Blueprint, render_template, request, redirect, session, jsonify, make_response, url_for, flash
from flask_login import login_required, logout_user, login_user
from werkzeug.security import generate_password_hash,check_password_hash

from App import models
from App.SMS import sms
from App.forms import RegisterCheck, MarkCheck
from App.models import *
from App.verifycode import vc

bp = Blueprint('bp',__name__)
us = Blueprint("us",__name__,url_prefix='/user')

@bp.route("/")
def index():
    #查询文章数据
    articles = Article.query.all()
    three_articles = Article.query.order_by(-Article.create_time).all()[:3]
    three = len(three_articles)
    return render_template("index.html",**locals())

# 博文分类展示
@bp.route("/list/")
@bp.route("/list/<int:cid>/")
@bp.route("/list/<int:cid>/<int:page>")
def list_article(cid=1,page=1):
    if cid < 0: # 如果cid不带参数，值-1，就查询默认分类
        # 获取默认分类中所有的文章数据
        category = Category.query.first()
        cid = category.cid  # 获取第一个cid
    # if page <0:
    #     page = 2
    articles = db.session.query(Article, Category).filter(Article.cid == Category.cid, Category.cid == cid).all()
    pagination = db.session.query(Article, Category).filter(Article.cid == Category.cid, Category.cid == cid).paginate(page,2)
    article_num = len(articles)
    # 按照分类获得每个分类的数量
    categorys = Category.query.all()
    category_num = len(categorys)
    cidnum = db.session.execute("select cid,count(cid) from article group by cid").fetchall()
    cid_num = len(cidnum)
    # 提取分类数据
    categories = Category.query.all()
    # print(categories[cid].name)
    # 提取标签
    # time = datetime.utcnow()
    # print(time)
    tags = Tag.query.all()
    tags_num = len(tags)
    # 最近3篇文章
    three_articles = Article.query.order_by(-Article.create_time).all()[:3]
    three = len(three_articles)
    # print(three_articles)
    return render_template("blog.html",**locals())

# @bp.route("/page/<int:page>/")
# def list_user(page=2):
#     # 搞清楚页码和记录关系：limit (page-1)*10,10
#     # 获取分页对象 .group_by( User.sex).all()
#     # a = db.session.query(Article, Category).filter(Article.cid == Category.cid).all()
#     # print(a)
#     pagination = Article.query.paginate(page, 2)
#     # pagination = db.session.query(Article, Category).filter(Article.cid == Category.cid).paginate(page,1)
#     print(pagination.__dict__)
#     return render_template("list.html",**locals())


@bp.route("/post/")
@bp.route("/post/<int:aid>/")
def list_post(aid=0):
    # if aid > 0: # 如果cid不带参数，值-1，就查询默认分类
    #     # 获取默认分类中所有的文章数据
    #     article = Article.query.first()
    #     aid = article.aid # 获取第一个cid
    categories = Category.query.all()
    category = Category.query.first()
    # print(category)
    cid = category.cid  # 获取第一个cid
    articles = Article.query.all()
    article_num = len(articles)
    # 提取分类数据
    tags = Tag.query.all()
    tags_num = len(tags)
    # 根据ａｉｄ获取ｔａｇ的值
    tag = db.session.query(Tag).filter(Article.aid == Tag.aid).all()
    # 评论数量
    marks = Mark.query.all()
    # marks_num1 = Mark.query.count()
    # print(marks_num1, type(marks_num1))
    marks_num = len(marks)
    # print(marks_num,type(marks_num))
    # 根据ｕｉｄ找用户名
    # articles = db.session.query(Article, Category).filter(Article.cid == Category.cid, Category.cid == cid).all()
    usrname = db.session.query(User.username).filter(Mark.uid == User.uid).all()
    # print(usrname,type(usrname))
    # 根据用户名查找ｕｉｄ
    # 最近3篇文章
    three_articles = Article.query.order_by(-Article.create_time).all()[:3]
    three = len(three_articles)
    return render_template("post.html",**locals())

@bp.route('/verify/')
def verify_code():
    result = vc.generate()
    # 把验证码字符串保存到session
    session['code']= vc.code
    response = make_response(result)
    response.headers["Content-Type"] = "image/png"
    #返回图片
    return response

#短信验证
@bp.route('/send/',methods=['GET','POST'])
def send_sms():
    phone = request.values.get('phone')
    # print(phone)
    if phone:
        # 产生验证码
        num = randint(1000, 9999)
        # 添加到session
        session['phonecode'] = str(num)
        para = "{'number':'%d'}" % num
        res = sms.send(phone, para)
        print(res, type(res))
        return jsonify({'code': 1, 'msg': '发送成功'})
    return jsonify({"code": 0, 'msg': "电话号码不存在"})

@bp.route("/register/",methods=['GET','POST'])
def register_user():
    form = RegisterCheck(request.form)
    # print(form)
    if request.method == 'POST':
        # print("123")
        # 验证成功，返回True，否则返回False
        if form:
            # 获取验证数据
            username = form.username.data
            phone = form.phone.data
            password = form.password.data
            user = User(username=username)
            # 保存用户信息
            user.phone = phone
            user.password = generate_password_hash('password')
            # user.password = hashlib.sha1(password.encode('utf8')).hexdigest()
            db.session.add(user)
            db.session.commit()
            return redirect("/")
    return render_template("register.htm",**locals())

@bp.route("/addmark/",methods=['GET','POST'])
def add_mark():
    form = MarkCheck(request.form)
    if request.method == 'POST':
        if form:
            # 获取验证数据
            username = form.username.data
            uid = db.session.query(User.uid).filter(User.username == username).first() # 查询有问题
            print(uid, type(uid))
            content = form.content.data
            mark = Mark(uid=uid)
            # 保存用户信息
            mark.uid = uid[0]
            mark.content = content
            db.session.add(mark)
            db.session.commit()
            return redirect("/")
    return render_template("login.htm")


@us.route("/login/",methods=["GET","POST"])
def user_login():
    if request.method == "POST":
        username = request.form.get('username')
        password = request.form.get('password')
        print(username,password)
        user = User.query.filter(User.username == username, User.password == password).first()
        print(user)
        if user:
        # if check_password_hash(sqlpwd1, '123456'):
            # 使用登录管理记录用
            # 参数必须是User的对象
            login_user(user)
            return redirect(url_for("bp.index"))
        else:
            flash("用户名或密码错误")
    return render_template("login.htm")

@us.route("/reply/")
@login_required
def reply_article():
    return "回复"

# 退出登录
@us.route("/logout/")
def user_logout():
    # 退出登录
    logout_user()
    return redirect('/')

@us.route("/register/",methods=["GET","POST"])
def user_register():
    return render_template("register1.htm")

