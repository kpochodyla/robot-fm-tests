*** Settings ***
Documentation    Test that numbers representing assigned tasks are visible.
Library    SeleniumLibrary
Resource    resources/resource.robot
Test Setup    login in to testarena
Test Teardown     End Test Case

*** Test Cases ***
Chech That All Tasks Counter Is Visible

    Element Should Be Visible    ${all_tasks_count_prompt}    All tasks counter is not visible

Check That New Tasks Counter Is Visible

    Element Should Be Visible    ${new_tasks_count_prompt}    New tasks counter is not visible

Check That Reopened Tasks Counter Is Visible

    Element Should Be Visible    ${reopened_tasks_count_prompt}     Reopened tasks counter is not visible

Check That In Progress Tasks Counter Is Visible

    Element Should Be Visible    ${in_progress_tasks_count_prompt}    In progress tasks counter is not visible

Check That Closed Tasks Counter Is Visible

    Element Should Be Visible    ${closed_tasks_count_prompt}    Closed tasks counter is not visible

Check That Sum Of All Tasks Is Correct
    ${all_tasks} =     Get Text    ${all_tasks_count_prompt}
    ${tasks_count} =     Convert To Integer    ${all_tasks}
    ${tasks_list} =    Create List    ${new_tasks_count_prompt}    ${reopened_tasks_count_prompt}    ${in_progress_tasks_count_prompt}    ${closed_tasks_count_prompt}
    ${text_of_task_numbers} =     Get List Of Text Values    ${tasks_list}
    ${sum_of_values} =     Get Sum Of Values From Text List    ${text_of_task_numbers}
    Should Be Equal As Integers    ${tasks_count}    ${all_tasks}
