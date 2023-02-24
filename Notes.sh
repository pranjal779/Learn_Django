(DjangoProject) C:\Users\prath\Desktop\pranjals studies\Github studies\Django>doskey /history
cd C:\Users\prath\Desktop\pranjals studies\Github studies\Django
dir
DjangoProject/Scripts/Activate
DjangoProject/Scripts/activate
DjangoProject\Scripts\activate
python manage.py runserver
cd mysite
python manage.py runserver
##python manage.py startapp polls
python manage.py migrate
python manage.py makemigrations
python manage.py migrate
explorer .
python manage.py shell
python manage.py createsuperuser
python mange.py runserver
python manage.py runserver
python mange.py runserver
python manage.py runserver
python manage.py test polls
python manage.py shell
python manage.py test polls
python manage.py shell
python manage.py test polls
python manage.py runserver
deactivate
dir
cd..
DjangoProject/Scripts/activate
DjangoProject/scripts/activate
DjangoProject/Scripts/activate
dir
DjangoProject/Scripts/activate
DjangoProject\Scripts\activate
doskey /history

# (DjangoProject) C:\Users\prath\Desktop\pranjals studies\Github studies\Django>



>>> import datetime
>>> from django.utils import timezone
>>> from polls.models import Question
>>> future_question = Question(pub_date=timezone.now() + datetime.timedelta(days=30))
>>> # created a Question instance above with pub_date 30 days in the future
>>> # was it published recently?
>>> future_question.was_published_recently()
False
>>>
KeyboardInterrupt
>>> exit()

(DjangoProject) C:\Users\prath\Desktop\pranjals studies\Github studies\Django\mysite>python manage.py test polls
Creating test database for alias 'default'...
System check identified no issues (0 silenced).
...
----------------------------------------------------------------------
Ran 3 tests in 0.004s

OK
Destroying test database for alias 'default'...

(DjangoProject) C:\Users\prath\Desktop\pranjals studies\Github studies\Django\mysite>python manage.py shell
Python 3.11.0 (main, Oct 24 2022, 18:26:48) [MSC v.1933 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
(InteractiveConsole)
>>> from django.test.utils import setup_test_environment
>>> setup_test_environment()
>>> from django.test import Client
>>> # create an instance of the client for our use
>>> client = Client()
>>> # get a response from '/'
>>> response = client.get('/')
Not Found: /
>>> response.status_code
404
>>> # we should expect a 404 from that address; if you instead see an
>>> >>> # "Invalid HTTP_HOST header" error and a 400 response, you probably
  File "<console>", line 1
    >>> # "Invalid HTTP_HOST header" error and a 400 response, you probably
    ^^
SyntaxError: invalid syntax
>>> # we should expect a 404 from that address; if you instead see an # omitted the setup_test_environment() call described earlier.
>>> # we should expect a 404 from that address; if you instead see an # "Invalid HTTP_HOST header" error and a 400 response, you probably # omitted the setup_test_environment() call described earlier.
>>> # on the other hand we should expect to find something at '/polls/'
>>> # we'll use 'reverse()' rather than a hardcoded URL
>>> from django.urls import reverse
>>> response = client.get(reverse('polls:index'))
>>> response.status_code
200
>>> response.content
b'\n<ul>\n    \n        <li><a href="/polls/1/">what&#39;s up?</a></li>\n    \n</ul>\n\n'


>>> q.choice_set.all()
<QuerySet []>
>>> q.choice_set.create(choice_text = "The sky is blue", votes = 0)
<Choice: The sky is blue>
>>> q.choice_set.create(choice_text = "cloudy", votes = 0)
<Choice: cloudy>
>>> q.choice_set.create(choice_text = "Django is interesting concept", votes = 0)
<Choice: Django is interesting concept>
>>> Choice.objects.all()
<QuerySet [<Choice: The sky is blue>, <Choice: cloudy>, <Choice: Django is interesting concept>]>
>>> for c in Choice.objects.all():
...     print(c.question)
...
what's up?
what's up?
what's up?
>>> exit()

(DjangoProject) C:\Users\prath\Desktop\pranjals studies\Github studies\Django\mysite>python manage.py createsuperuser
Username (leave blank to use 'prath'): pranjal
Email address:
Password:
Password (again):
Error: Blank passwords aren't allowed.
Password:
Password (again):
Superuser created successfully.


Django\mysite>python manage.py shell
Python 3.11.0 (main, Oct 24 2022, 18:26:48) [MSC v.1933 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
(InteractiveConsole)
>>> from polls.models import Choice, Question
>>> Question.object.all()
Traceback (most recent call last):
  File "<console>", line 1, in <module>
AttributeError: type object 'Question' has no attribute 'object'
>>> Question.objects.all()
<QuerySet []>
>>> from django.utils import timezone
>>> q = Question(question_text = "What's new?", pub_date = timezone.now())
>>> q.save()
>>> q.id()
Traceback (most recent call last):
  File "<console>", line 1, in <module>
TypeError: 'int' object is not callable
>>> q.id
1
>>> q.question_text
"What's new?"
>>> q.pub_date
datetime.datetime(2023, 2, 23, 23, 41, 9, 248993, tzinfo=<UTC>)
>>> q.question_text = "what's up?"
>>> q.save()
>>> q.question_text
"what's up?"
>>> Question.objects.all()
<QuerySet [<Question: Question object (1)>]>
>>> exit()



Django\mysite>python manage.py makemigrations
Migrations for 'polls':
  polls\migrations\0001_initial.py
    - Create model Question
    - Create model Choice

(DjangoProject) C:\Users\prath\Desktop\pranjals studies\Github studies\Django\mysite>python manage.py migrate
Operations to perform:
  Apply all migrations: admin, auth, contenttypes, polls, sessions
Running migrations:
  Applying polls.0001_initial... OK
