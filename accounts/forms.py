from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

#creates the "sign up form" for professors/TA's to sign up to register classes
class SignUpForm(UserCreationForm):
    first_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
    last_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
    email = forms.EmailField(max_length=254, help_text='Required. Inform a valid email address.')
    #pulls from the meta model "User" that stores all of the info
    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'password1', 'password2', )
