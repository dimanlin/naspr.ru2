# language: ru
Функционал: Регистриция
  Регистрация
  Капча
  Подтверждение на мыло
  Востановление пароля
  Отказ от подтверждения регистрации
  Регистрация через социальные сети
  Сценарий: Полная регистрация
    Допустим я на главной странице
    И я перехожу по ссылке "Регистрация"

    И я увижу "Электронная почта:"
    И я увижу "Пароль:"
    И я увижу "Подтвердите пароль:"
    И я в поле "user_email" запишу "user@ya.ru"
    И я в поле "user_password" запишу ""
    И я в поле "user_password_confirmation" запишу ""
    И я нажму "Зарегистрироваться"
    И я увижу "Пароль: не может быть пустым"

    И я в поле "user_password" запишу "secret"
    И я в поле "user_password_confirmation" запишу "se"
    И я нажму "Зарегистрироваться"
    И я увижу "Пароль: не совпал"

    И я в поле "user_password" запишу "secret"
    И я в поле "user_password_confirmation" запишу "secret"
    И я нажму "Зарегистрироваться"
    И я увижу "Вы успешно зарегистрировались."
  

    И я перешёл по ссылке "Выйти"
    И я увижу "Вы успешно вышли."
    И у пользователь "user@ya.ru" имеет роль "user"

  Сценарий: Вход
    Допустим зарегистрирован пользователь "user@ya.ru"
    Допустим я на главной странице

    И я перехожу по ссылке "Войти"
    И я увижу "Электронная почта:"
    И я увижу "Зарегистрироваться"
    И я увижу "Забыли пароль?"

    И я увижу "Пароль:"
    И я в поле "user_email" запишу ""
    И я в поле "user_password" запишу ""
    И я нажму "Войти"
    И я увижу "Неправильный email или пароль."

    И я в поле "user_email" запишу "user@ya.ru"
    И я в поле "user_password" запишу "secret"
    И я не увижу "Remember me"
    И я нажму "Войти"

    И я увижу "Добро пожаловать на сервис мнений и споров."

  Сценарий: Востановление пароля
    Допустим зарегистрирован пользователь "user@ya.ru"
    Допустим я на главной странице
    И я перехожу по ссылке "Войти"
    И я перехожу по ссылке "Забыли пароль?"
    И я увижу "Забыли пароль?"
    И я в поле "user_email" запишу "user@ya.ru"
    И я нажму "Выслать мне инструкции по востановлению пароля"
    И я открою письмо с темой "Инструкции по смене пароля" в "user@ya.ru"
    И я перейду по ссылке "Сменить пароль" в письме
    
    

  Сценарий: Регистрация церез социальные сети
    И я зарегистрировался через vkontakte

