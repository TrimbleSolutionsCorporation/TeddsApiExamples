//Normally you would want to use strongly typed references in order to get the benefit of visual studio features such as intellisense
//To simplify the steps required to run this example it can use dynamic types, this also removes the dependency on the TeklaTeddsAPI nuget
//To do this remove the following line from the Tedds.ApiExample.csproj file
//<DefineConstants>$(DefineConstants);USE_TEDDS_CALC_IA_REF</DefineConstants>

using System;

#if USE_TEDDS_CALC_IA_REF
    using Tekla.Structural.InteropAssemblies.TeddsCalc;
#endif



namespace TeddsApiExample
{
    class Program
    {
        static int Main(string[] args)
        {
            if (args.Length < 7)
            {
                using (VolumeCalculator form = new VolumeCalculator())
                {
                    form.ShowDialog();
                    return (int)form.VolumeValue;
                }
            }

            double volume = CalculateVolume(
                //Height
                double.Parse(args[0]), args[1],
                //Length
                double.Parse(args[2]), args[3],
                //Width
                double.Parse(args[4]), args[5],
                //Volume units
                args[6]);

            Console.WriteLine("Volume is {0} {1}", volume, args[6]);
            Console.ReadKey();
            return (int)volume;
        }

        public static double CalculateVolume(double height, string heightUnits, double length, string lengthUnits, double width, string widthUnits, string volumeUnits)
        {
            //Initialise Tedds
#if USE_TEDDS_CALC_IA_REF
            ICalculator teddsCalc = new Calculator();
#else
            dynamic teddsCalc = Activator.CreateInstance(Type.GetTypeFromProgID("Tedds.Calculator"));
#endif

            //Initialise calculator
            teddsCalc.Initialize();

#if USE_TEDDS_CALC_IA_REF
            IFunctions functions = teddsCalc.Functions;
#else
            dynamic functions = teddsCalc.Functions;
#endif

            //Set inputs
            functions.SetVar("Height", height, heightUnits);
            functions.SetVar("Length", length, lengthUnits);
            functions.SetVar("Width", width, widthUnits);


            //Calculate volume
            functions.SetVarExpr("Volume", "Height * Length * Width");

            //Get volume
            double volume = functions.GetVar("Volume").ToDouble(volumeUnits);

            //Close Tedds
            functions = null;
            teddsCalc = null;
            GC.Collect();

            return volume;
        }
    }
}
