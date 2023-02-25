*** Settings ***
Documentation    File containing all the locators with their values used in test cases. 
Library    SeleniumLibrary
*** Variables ***
# Locators login
${email_field}    id:email
${password_field}    id:password
${login_button}    login
${logout_button}    css:.header_logout
${login_form_error_prompt}     css:.login_form_error
# Locators tasks counters
${all_tasks_count_prompt}    //*[@class='dsb-content-main']/a/h6 
${new_tasks_count_prompt}    //*[@class='dsb-content-second'][1]/a/h6
${reopened_tasks_count_prompt}    //*[@class='dsb-content-second'][2]/a/h6
${in_progress_tasks_count_prompt}    //*[@class='dsb-content-second'][3]/a/h6
${closed_tasks_count_prompt}    //*[@class='dsb-content-second'][4]/a/h6
