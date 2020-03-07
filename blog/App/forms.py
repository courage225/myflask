from flask import session
from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField
from wtforms.validators import DataRequired, Length, EqualTo, ValidationError
import re
from App.models import User


def check_phone(self,field):
    if not re.match(r'(13\d|14[5|7]15\d|166|17[3|6|7]18\d)\d{8}$',field.data):
        raise ValidationError("非法电话号码")

def check_email(self,field):
    if not re.match(r'(^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$)',field.data):
        raise ValidationError("请输入正确邮箱")

def rename_user(self, field):
    user = User.query.filter(User.username == field.data).first()
    if user:
        raise ValidationError("用户名已存在")
    return field

def no_user(self, field):
    user = User.query.filter(User.username != field.data).first()
    if user:
        raise ValidationError("该用户不存在")
    return field

def sms(self,field):
    print(field.data,session.get("phonecode"))
    if field.data != session.get("phonecode"):
        raise ValidationError("短信验证失败")
    return field

def code(self,field):
    print(field.data, session.get("code"))
    if field.data != session.get("code"):
        raise ValidationError("图片验证失败")
    return field


class RegisterCheck(FlaskForm):
    username = StringField("用户昵称",validators=[DataRequired("用户昵称必填"), rename_user])
    password = PasswordField("用户密码",validators=[DataRequired("密码必填"), Length(min=6,max=9,message="密码长度至少在６－９位")])
    confirm = PasswordField("请确认密码",validators=[EqualTo("password",message="两次输入不一致")])
    phone = StringField("请输入手机号",validators=[check_phone])
    phonecode = StringField(validators=[sms])
    code =StringField(validators=[code])

class MarkCheck(FlaskForm):
    username = StringField("用户昵称",validators=[DataRequired("用户昵称必填"), no_user])
    email = StringField("请输入邮箱",validators=[check_email])
    content = StringField("请输入内容",validators=[DataRequired("来都来了,留句话呗")])



"""
uid = db.Column(db.Integer,primary_key=True,autoincrement=True)
    username = db.Column(db.String(30),nullable=False,unique=True)
    password = db.Column(db.String(128),nullable=False)
    phone = db.Column(db.String(11))
    email = db.Column(db.String(200))
    portrait = db.Column(db.String(300))
    regtime = db.Column(db.DateTime)
    isforbid = db.Column(db.Boolean,default=False)
                           
"""