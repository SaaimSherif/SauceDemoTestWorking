from selenium import webdriver


def before_scenario(context, scenario):
    context.browser = webdriver.Chrome()
    context.browser.implicitly_wait(5)  # Set implicit wait for elements


def after_scenario(context, scenario):
    context.browser.quit()  # Quit browser after scenario
