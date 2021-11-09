from captchaparse import binary_captchar
filepath = 'image.png'
captcha_value = binary_captchar(filepath)
print(captcha_value)
