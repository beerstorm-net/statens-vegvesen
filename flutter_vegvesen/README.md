# flutter_vegvesen

FLutter package til å hente kjøretøy opplysninger fra Vegvesen API.  

## Example  
```
final vegvesen = Vegvesen(bilskilt: 'EB65943');
Kjoretoy kjoretoy = await vegvesen.hentKjoretoy();
print('kjoretoy: $kjoretoy');

// sjekke hvis det er ELBIL  
vegvesen.elbil();
```

## Install  
```
dependencies:  
    flutter_gravatar: any
```  

## Support  
You can file issues at https://github.com/beerstorm-net/statens-vegvesen/issues  
Pull requests are welcome.  
