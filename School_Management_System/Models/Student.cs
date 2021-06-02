using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace School_Management_System.Models
{
    public class Student
    {
        public int id { get; set; }
        public string studentName { get; set; }
        public int gradeLevel { get; set; }

        public Student()
        {
            //leave blank, code will use this
        }
    }
}
