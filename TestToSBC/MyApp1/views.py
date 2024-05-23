from django.shortcuts import render

#HOME  =  = == = = == = = = = = = = = = == == = = = == = = = =
def home(request):
    return render(request, 'home.html')

#ABOUT =  = == = = == = = = = = = = = = == == = = = == = = = =

def about (request):
    personas = [{'name1': 'Dilan Sobenis'}, {'name2': 'Edwar Gonzalez'}, {'name3':'Jeisson Paredes'}]
    return render (request, 'mi-plantilla-1.html', {'personas': personas})

