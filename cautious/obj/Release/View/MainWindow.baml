   M S B A M L   `   `   `  ���� U  QMapControl.WPF, Version=2.8.0.0, Culture=neutral, PublicKeyToken=f26fcf0059638459?0clr-namespace:MapControl;assembly=MapControl.WPF
MapControl  C ?cautious, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ViewModel	ViewModel M+clr-namespace:LocationToVisibilityConverterLocationToVisibilityConverter .   (LocationToVisibilityConverter.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @map0clr-namespace:MapControl;assembly=MapControl.WPF     &vmclr-namespace:ViewModel     =local+clr-namespace:LocationToVisibilityConverter       � Title$  cautious��$	��600��$	��800�� �� IsPressAndHoldEnabled .   � 	Resources    MapControl.TileLayer   OpenStreetMap   
SourceName   Description   
TileSource$   MapControl.TileSourceConverter   MaxZoomLevelA  ;LocationToVisibilityConverter.LocationToVisibilityConverter ! LocationToVisibilityConverter  PolylineItemStyle �� 
TargetType   MapControl.MapItem �� Property	 �� Value
 �� 
TargetType   MapControl.MapPolyline   	Locations  PointItemStyle   MapControl.MapPanel'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States 	  System.Windows.VisualState 	  
Storyboard �� 
TargetName �� TargetProperty	 W� To g� Duration F�Name J� Opacity @� RadiusX @� RadiusY �� Color �� Left
 �� Top ��Name0
  *LocationToVisibilityConverter.OutlinedText 
  OutlineThickness 
  Text �� Triggers P� Property P� Value  PushpinItemStyle  `� 	Converter! �� Path" �� RelativeSource   MapControl.Pushpin��%�  &	        &	 �     &	 �     &	     &	 �    7    $ OpenStreetMap��$R LMaps © [OpenStreetMap Contributors](http://www.openstreetmap.org/copyright)��$7 1http://{c}.tile.openstreetmap.org/{z}/{x}/{y}.png $ 19��  �� "  .���  � ��	 �� "
  .R�  
���  ��$��3�� �� *	Locations+�� "  .�-   ��  �@ Location	 �� *
Location+��  � ��
	 �   ���  � ��	 �� "
  .R���    CommonStates��. 	  
Normal��	  Disabled��	  	MouseOver��. �� .��W� $ labelBackground��$ Opacity�$	 0.7X�$ 0:0:0.1D�  SelectionStates��. 	  
Unselected��	  Selected��. �� .��W� $ selectedPath��$ Opacity�$	 0.7X�$ 0:0:0.1D�.+�F� $ selectedPath��
�������$ 0Q���@� $ 15Q�$ 15Q�F� $��2��
������ ���� $
 Gray����@� $ 8Q�$ 8Q�� $ 15��$ -8��.+��� $ labelBackground��
�������$ 0Q�
  $��1q�$	 1.5Q� �� *Name+ P�  �@��
IsSelected . . ���  �@K�ZIndex$	 1���� "  .�-   ��  �@ Location	 �� *
Location+��  � ��$	 Bottom=���  � ��
	 �   ���  � y�	 `� 8    .1��� $! (map:MapPanel.ParentMap)�" �� *Self+�� $! RenderTransform�" �� *Self+��  � ��	 �� "
  .R�  #��z������ *Name+ P�  �@��
IsSelected . . ���  �@K�ZIndex$	 1����  � ��
	 � E��# � DataContext#   ViewModel.ViewModel  .��� $ � RowDefinitions$ �� �� $
��Auto �.+�   MapControl.Map  -   %  Name$	% map��   MapControl.MapBase&   	ZoomLevel$& 7Q�'   MaxZoomLevel$' 20Q�(   MinZoomLevel$( 3Q�)   	TileLayer#) [  $��0,20,0,0q�*   Center* �� *	MapCenter+�� $��Right=�$��Bottom=����	#7FFFFFFF._��� $��2q�$��10(�   MapControl.HyperlinkText+   InlinesSource+ �� *TileLayer.Description+, �� ElementName$	, map��� $��
680,52,0,0q�- � ColumnDefinitions- �� $
��Auto �.+��� -   . ��Name$. mouseLocation��$��
25,0,10,10q�$��Bottom=�$��Segoe UI Mono)�$��2��$��34���� $��Right=�$��97��$��2��$��0,10,10,454q�.+��� $��Vergrößerung��$��0,0,0,2q�$��Center=�
���   �$��10(��� / � ToolTip$/ 
Zoom Level��$	��100��$��Center=�0 � SmallChange$
0 0.01Q�1 � Minimum1 �� *MinZoomLevel+$	, map��2 � Maximum2 �� *MaxZoomLevel+$	, map��3 � Value3 �� *TargetZoomLevel+$	, map��o� -   4 o�Name$
4 menu��$
��Left=�$��20��$	��Top=�$
��Auto��.@�m� $��Datei��m� $��
Bearbeiten��m� $
��Info��.@�m� -   $��Quellen��m� -   $��Über...���� $
��Left=�$��22��$��	10,25,0,0q�5 �� TextWrapping$5 NoWrap=�$	��Top=�$
��Auto���� -   $��Suche��$
��Left=�$��22��$��
710,25,0,0q�$	��Top=�$��72��