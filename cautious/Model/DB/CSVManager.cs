using System;
using CsvHelper;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cautious.Model.DB
{
    /// <summary>
    /// The ExcelManager class administer an Excel-DB, with given colum titles.
    /// </summary>
    class CSVManager
    {
        /// <summary>
        /// The class DatabaseObject defines an overall object belongs to an DB or table.
        /// </summary>
        class DatabaseObject
        {
            object[] Attributes { get; }
            int Row { get; }

            /// <summary>
            /// Assign local to global variables.
            /// </summary>
            /// <param name="row">Stores the row in DB of the object.</param>
            /// <param name="variables">One column is one attribute of the object.</param>
            public DatabaseObject(int row, object[] variables)
            {
                Row = row;
                Attributes = variables;
            }
        }

        //Global Attributes
        CsvReader csv;
        StreamReader sr;
        
        /// <summary>
        /// The constructor initializes the object from class ExcelManager.
        /// </summary>
        /// <param name="columnTitel">The string-array has to contain every for the manager relevant colum title.</param>
        /// <param name="dbPath">The path of the SCV-DB-File.</param>
        public CSVManager(String dbPath, String[] columnTitel)
        {
            sr = new StreamReader(dbPath);
            csv = new CsvReader(sr);

            var records = csv.GetRecords<dynamic>();
        }


        /// <summary>
        /// The ReadInCSV-method returns 
        /// </summary>
        /// <param name="absolutePath">The absolute path of the CSV-File.</param>
        /// <returns></returns>
        public static List<string> ReadInCSV(string absolutePath)
        {
            List<string> result = new List<string>();
            string value;
            using (TextReader fileReader = File.OpenText(absolutePath))
            {
                var csv = new CsvReader(fileReader);
                csv.Configuration.HasHeaderRecord = true;
                while (csv.Read())
                {
                    for (int i = 0; csv.TryGetField<string>(i, out value); i++)
                    {
                        result.Add(value);
                    }
                }
            }
            return result;
        }
    }
}
