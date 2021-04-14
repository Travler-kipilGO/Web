from django.urls import path, include
from userApp import views


urlpatterns = [
    path('index/',      views.index,      name='index'),
    path('login/',      views.login,      name='login'),
    path('logout/',     views.logout,     name='logout'),
    path('signupForm/', views.signupForm, name='signupForm'),
    path('signup/',     views.signup,     name='signup'),
]