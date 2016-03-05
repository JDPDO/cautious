using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using OsmSharp.Osm.Data.Memory;
using OsmSharp.UI.Map.Styles.MapCSS;
using OsmSharp.Math.Geo.Projections;
using OsmSharp.UI.Map;

namespace cautious
{
    public class OsmMapRender
    {
        public OsmMapRender()
        {
            this.Projection = new WebMercator();
        }

        private static Stream stream = File.Open(@"cautious\osm\source\germany-latest.osm.pbf", FileMode.Open);
        MemoryDataSource dataSource = MemoryDataSource.CreateFromPBFStream(stream);
        MapCSSInterpreter interpreter = new MapCSSInterpreter("");
        Map map = new Map(new WebMercator());
        map.AddLayerOsm(dataSource, interpreter);
    }  
}
