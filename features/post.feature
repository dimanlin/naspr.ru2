# language: ru
Функционал: Регистриция
  Новые посты могут создавать авторизованные пользователи
  Коментировать могут все, как зарегистрированные так и не зарегистрированные(через аккаунты twitter facebook vkontakte)
  Предыстория:
    Допустим зарегистрирован пользователь "user@ya.ru"
  Сценарий: Создание спора
    Допустим я зашёл как "user@ya.ru"

    И я перешёл по ссылке "Создать мнение"
    И я нажму "Создать"
    И я увижу "Тема не может быть пустой"
    И я увижу "Мнение не может быть пустым"
    И я увижу "Вы должны быть согласны с правилами публикации"

    И я в поле "post_subject" запишу "Заголовок спора_1"
    И я в поле "post_body" запишу "Содержимое спора_1"
    И я установлю галку в "post_rule"
    И я нажму "Создать"

    И я увижу "Ваше мнение добавленно"

    И я перейду по ссылке "Мои мнения"
    И я перейду по ссылке "Заголовок спора_1"
    И я увижу "Содержимое спора_1"

  Сценарий: Коментарии со стороны авторизированного пользователя
    Допустим у пользователя "user@ya.ru" есть следующие мнения:
      | subject   | body   |
      | subject_1 | body_1 |
      | subject_2 | body_2 |
    Допустим я зашёл как "user@ya.ru"
    Допустим я на главной странице
    И я увижу "subject_2"
    И я увижу "body_2"
    И я перейду по ссылке "Голосовать"
    И я в поле "тело" запишу "comment_1"
    И я выберу "за"
    И я нажму "Высказаться"
    И я увижу "Ваше мнение добавленно"
    И я увижу "comment_1"

  Сценарий: Комментарий со стороны не авторизированного пользователя
    Допустим есть следующие мнения:
      | subject   | body   |
      | subject_1 | body_1 |
      | subject_2 | body_2 |


