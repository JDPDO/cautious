using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

//OsmSharp implemantation
using OsmSharp.Math.Geo;
using OsmSharp.Math.Geo.Projections;
using OsmSharp.UI;
using OsmSharp.UI.Animations;
using OsmSharp.UI.Map;
using OsmSharp.UI.Renderer;
using OsmSharp.Units.Angle;

namespace cautious
{
    /// <summary>
    /// Interaktionslogik für MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
    }
}
