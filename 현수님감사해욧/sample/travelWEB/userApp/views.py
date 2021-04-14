import json
from django.http import JsonResponse, HttpResponse
from django.shortcuts import render , redirect
from .models import *


# Create your views here.

#------------<landing / login>------------#
def index(request):
    request.session['ID'] = {}
    request.session['login'] = 'N'
    request.session.modified = True

    return render(request, 'index.html')


#------------<login>------------#
def login(request):
    if request.method =='POST':
        id       = request.POST['userid']
        password = request.POST['password']
        user     = User.objects.get(ID = id)
        if user.PW == password:
            return redirect('search.html')
        else :
            return render(request, 'index.html', {'error' : 'username or password is incorrect.'})
    else:
        return render(request, 'index.html')


#------------<logout>------------#
def logout(request) :
    request.session['ID'] = {}
    request.session['login'] = 'N'
    request.session.modified = True
    return redirect('login.html')


#------------<회원가입페이지>------------#
def signupForm(request) :
    return render(request, 'signupForm.html')


#------------<회원가입>------------#
def signup(request) :
    if request.method == 'POST' :
        id = request.POST['new_id']
        pwd = request.POST['new_pwd']
        name = request.POST['new_name']
        age = request.POST['new_age']
        sex = request.POST['new_sex']
        phone = request.POST['new_phone']
        address = request.POST['new_address']

        register = User(ID=id, PW=pwd, Name=name, Age=age, Phone=phone, Address=address, Sex=sex)

        register.save()
    return render(request, 'index.html')


# class UserManager(BaseUserManager):
#     use_in_migrations = True
#
#     def create_user(self, email, nickname, password=None):
#         if not email:
#             raise ValueError('must have user email')
#         user = self.model(
#             email=self.normalize_email(email),
#             nickname=nickname
#         )
#         user.set_password(password)
#         user.save(using=self._db)
#         return user
