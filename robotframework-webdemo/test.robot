# *** Settings ***
# Documentation     A test suite containing tests related to invalid login.
# ...
# ...               测试登录
# # 注释
# Library           Selenium2Library

# *** Test Cases *** 
# open login
#     Open Browser        url=http://118.31.19.120:3000       Browser=chrome
#     Click Element       link:登录                            
#     Input Text          id:name                             testuser3
#     Input Text          id:pass                             123456


*** Settings ***
Documentation     A test suite containing tests related to invalid login.
...
...               测试登录
# 注释
Library           Selenium2Library


# 用户自定义关键字
*** Keywords ***
用户登陆
    Open Browser    url=http://118.31.19.120:3000   browser=chrome
    Maximize Browser Window
    Click Element	link:登录
    Input Text      id:name                         testuser1
    Input Text      id:pass                         123456

# 定义变量
*** Variables ***
${url}      http://118.31.19.120:3000


*** Test Cases *** 
open login
# 测试登录
    用户登陆


# 测试注册
open regiser
    用户登陆



# 测试发帖
发帖
    用户登陆

