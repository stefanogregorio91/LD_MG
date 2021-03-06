from django.conf.global_settings import LOGOUT_REDIRECT_URL
from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.search,name= 'search'),
    # url(r'^search/', views.search,name= 'search'),
    url(r'^creastanza/', views.creastanza,name= 'creastanza'),
    url(r'^creahotel/', views.creahotel,name= 'creahotel'),
    # url(r'^creazioneavvenuta/', views.successocreazione, name='creazioneavvenuta'),
    url(r'^logout/$', views.logout_view, name='logout'),
    url(r'^login/',views.login_test,name='login'),
    url(r'^login_2/',views.login_2,name='login_2'),
    url(r'^riepilogoprenotazione/',views.RiepilogoPrenotazione, name='riepilogoprenotazione'),
    url(r'^userpage/',views.userpage,name='user'),
	url(r'^registrazioneutente/',views.register_user,name='registrazioneutente'),
    url(r'^prenota/',views.AggiungiPrenotazione, name='aggiungiprenotazione'),
    url(r'^cancellaprenotazione/', views.CancellaPrenotazione, name='cancellaprenotazione'),
    url(r'^cancellawishlist/', views.CancellaWishlist, name='cancellawishlist'),
    url(r'^editprenotazione/', views.ModificaPrenotazione, name='modificaprenotazione'),
    url(r'^updateeditprenotazione/', views.UpdateModificaPrenotazione, name='updatemodificaprenotazione'),
    url(r'^votazione/', views.Votazione, name='votazione'),
    url(r'^wishlist/', views.AggiungiAWishlist, name='aggiungiawishlist'),
    url(r'^registrazionegestore/',views.register_gestore,name='registrazionegestore')

]