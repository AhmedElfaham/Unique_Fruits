using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UniqueFruits
{
    class Program
    {
        static void Main(string[] args)
        {
            List<string> A1 = new List<string> { "Watermelon", "Apple", "Mango", "Guava", "Banana" };
            List<string> A2 = new List<string> { "Orange", "Kiwi", "Apple", "Watermelon" };
            List<string> R = new List<string>();

            SelectdistinctElementFrom(ref A1, ref A2, ref R);
            SelectdistinctElementFrom(ref A2, ref A1, ref R);
            StringBuilder summery = new StringBuilder();
            Console.Write("A1 Array is : ");
            foreach (string elm in A1)
            {
                summery.Append(elm + " ,");

            }
            Console.WriteLine(summery.Remove(summery.Length - 1, 1).ToString());
            summery.Clear();
            Console.Write("A2 Array is : ");
            foreach (string elm in A2)
            {
                summery.Append(elm + " ,");
            }
            Console.WriteLine(summery.Remove(summery.Length - 1, 1).ToString());
            summery.Clear();
            Console.WriteLine("---------------------------------------\n");
            Console.Write("Result Array is : ");
            foreach (string elm in R)
            {
                summery.Append(elm + " ,");
            }

            Console.WriteLine(summery.Remove(summery.Length - 1, 1).ToString());
            summery.Clear();
            Console.ReadLine();



        }


        public static void SelectdistinctElementFrom(ref List<string> A1, ref List<string> A2, ref List<string> R)
        {
            for (int i = 0; i < A1.Count; i++)
            {
                bool Isredundant = false;
                for (int j = 0; j < A2.Count; j++)
                {
                    if (A1[i] == A2[j])
                    {
                        Isredundant = true;
                        break;
                    }
                }

                if (!Isredundant)
                {
                    bool hasAddedbefore = false;
                    foreach (string elm in R)
                    {
                        if (elm == A1[i])
                        {
                            hasAddedbefore = true;
                            break;
                        }

                    }

                    if (!hasAddedbefore)
                    {
                        R.Add(A1[i]);
                    }

                }
            }
        }
    }
}
