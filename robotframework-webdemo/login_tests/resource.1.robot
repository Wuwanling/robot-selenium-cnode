*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${SERVER}         118.31.19.120:3000
${BROWSER}        chrome
${DELAY}          0
${VALID USER}     demo1231213
${VALID PASSWORD}    mode
${LOGIN URL}      http://${SERVER}/
${WELCOME URL}    http://${SERVER}/welcome.html
${INDEX PAGE}     http://${SERVER}/
${RigterUrl}     http://${SERVER}/signup
${ERROR URL}      http://${SERVER}/error.html
${postUrl}     http://${SERVER}/topic

*** Keywords ***
# 登陆
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Click Element	link:登录
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    CNode：Node.js专业中文社区

# Go To Login Page
#     Go To    ${LOGIN URL}
#     Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    id:name    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id:pass    ${password}

Submit Credentials
    Click Element    css:.span-primary

Welcome Page Should Be Open
    Location Should Be    ${INDEX PAGE}
    Title Should Be    CNode：Node.js专业中文社区


# 注册
Open Rigter
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed      ${DELAY}
    Click Element   link:注册
    Login Page Should Be Open


Input rigterUser
    [Arguments]     ${rigteruser}
    Input Text      id:loginname        ${rigteruser}

Input rigterPwd
    [Arguments]     ${rigterpassword}
    Input Text      id:pass     ${rigterpassword}


Input rigterPwd2
    [Arguments]     ${rePassword}
    Input Text      id:re_pass      ${rePassword}

Input rigterEmail
    [Arguments]     ${rigteremail}
    Input Text      id:email        ${rigteremail}

Rigter succes
    Location Should Be    ${RigterUrl}
    Title Should Be    CNode：Node.js专业中文社区 

# 发帖
Open Post_1
    [Arguments]     ${title}    ${Content}
    Click Element       class:span-success
    # Click Element       css:#tab-value > option:nth-child(2) 
    Execute Javascript        ActionChains(driver).move_to_element(ele).click().send_keys('woshixinjian').perform()
    Input Text      id:title    ${title}
    Input Text      class:CodeMirror-lines      ${Content}
    Click Element       class:submit_btn

# title
#     [Arguments]     ${title}
#     Input Text      id:title    ${title}


post succes
    [Arguments]     ${title}
    Location Should Be      ${postUrl}
    Title Should Be     ${title} - Nodeclub

