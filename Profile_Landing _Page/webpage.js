var name;
var now = new Date();
var hour = now.getHours();

name = window.prompt( "Please enter your name" );

if ( hour < 12 )
{
    document.write( "<h1>> Good Morning " );
}
    
if ( hour >= 12 )
{
    hour = hour - 12;
    if ( hour < 6 )
    {
        document.write( "<h1>> Good Afternoon " );
    }
    if ( hour >= 6 )
    {
        document.write( "<h1>> Good Evening " );
    }
}

document.writeln( name + ", Welcome to my Webpage! <</h1>" );