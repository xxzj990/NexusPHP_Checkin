## NexusPHP_checkin

__自动识别使用原生 NexusPHP 验证码的网站验证码并签到。__

### PREREQUISITE

* Python 3
* OpenCV 3 for Python3
  - pip3 install opencv-python
* [Requests](https://github.com/requests/requests)

### 说明

![captcha](https://camo.githubusercontent.com/93c99def19584803c538273bc26f1addc45a2742c71e8372e5db393ea500ad87/68747470733a2f2f7777312e73696e61696d672e636e2f6c617267652f303035596849386967793166766e336b6762666a656a33303436303134613976)

如果你看到pt站使用这样的自带的验证码，那么就可以使用该项目的验证码识别方法。
因为字母没有任何扭曲变形，模板匹配即可。

使用前，需要在checkin.py中替换域名。

### 单独识别验证码

如果您是开发者，想获取验证码返回值，请使用以下代码：

```python
from captchaparse import binary_captchar
filepath = 'captcha.jpg'
captcha_value = binary_captchar(filepath)
```


### LICENSE

Copyright (C) 2018 by TeraDew

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.
