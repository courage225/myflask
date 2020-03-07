from flask import Flask
from flask_script import Manager
from App.extends import db, init_third
from App.views import bp, us
from flask_migrate import Migrate,MigrateCommand
from flask_moment import Moment

app = Flask(__name__)
app.config.from_pyfile("settings.py")


init_third(app)


# 生成迁移对象
migrate =Migrate(db=db,app=app)

manager = Manager(app)
moment = Moment(app)
# 添加迁移命令
manager.add_command('db', MigrateCommand)

# 注册蓝图
app.register_blueprint(bp)
app.register_blueprint(us)


if __name__ == '__main__':
    manager.run()
