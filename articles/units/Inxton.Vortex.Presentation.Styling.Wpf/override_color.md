### How to override a color

In case you want to use your own colors just override them in your App.xaml like this
~~~XML
<Color x:Key="PrimaryColor">Purple</Color>
<SolidColorBrush x:Key="Primary" Color="{StaticResource PrimaryColor}" />
~~~