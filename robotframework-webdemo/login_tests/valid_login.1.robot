*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.1.robot

*** Test Cases ***
# 注册
# valid Rigter
#     Open Rigter
#     Input rigterUser    users4
#     Input rigterPwd     123123
#     Input rigterPwd2    123123
#     Input rigterEmail   1235ww@ha.com
#     Submit Credentials
#     Rigter succes
#     [Teardown]    Close Browser

# 登陆
# Valid Login
#     Open Browser To Login Page
#     Input Username    testuser1
#     Input Password    123456
#     Submit Credentials
#     Welcome Page Should Be Open
#     [Teardown]    Close Browser

# 发帖
valid Post
    Open Browser To Login Page
    Input Username    testuser1
    Input Password    1234b ftfky6jn6hb7g 56
    Submit Credentials
    Welcome Page Should Be Open
    Open Post_1     123098      woshitiezi
    post succes     123098



