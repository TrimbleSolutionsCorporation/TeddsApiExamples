using System;
using System.Windows.Forms;

namespace TeddsApiExample
{
    public partial class VolumeCalculator : Form
    {
        public VolumeCalculator()
        {
            InitializeComponent();
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            string[] args = Environment.GetCommandLineArgs();
            HeightValue = GetArg(args, 0, 100);
            HeightUnits = GetArg(args, 1, "mm");
            LengthValue = GetArg(args, 2, 150);
            LengthUnits = GetArg(args, 3, "mm");
            WidthValue = GetArg(args, 4, 200);
            WidthUnits = GetArg(args, 5, "mm");
            VolumeUnits = GetArg(args, 6, "mm^3");
        }

        public double HeightValue
        {
            get { return (double)_udHeight.Value; }
            set { _udHeight.Value = (decimal)value; }
        }

        public string HeightUnits
        {
            get { return _cbHeight.Text; }
            set { _cbHeight.Text = value; }
        }

        public double LengthValue
        {
            get { return (double)_udLength.Value; }
            set { _udLength.Value = (decimal)value; }
        }

        public string LengthUnits
        {
            get { return _cbLength.Text; }
            set { _cbLength.Text = value; }
        }

        public double WidthValue
        {
            get { return (double)_udWidth.Value; }
            set { _udWidth.Value = (decimal)value; }
        }

        public string WidthUnits
        {
            get { return _cbWidth.Text; }
            set { _cbWidth.Text = value; }
        }

        public double VolumeValue
        {
            get { return double.Parse(_tbVolume.Text); }
            set { _tbVolume.Text = value.ToString(); }
        }

        public string VolumeUnits
        {
            get { return _cbVolume.Text; }
            set { _cbVolume.Text = value; }
        }

        private void OnCalculate(object sender, EventArgs e)
        {
            VolumeValue = Program.CalculateVolume(HeightValue, HeightUnits, LengthValue, LengthUnits, WidthValue, WidthUnits, VolumeUnits);
        }

        private static double GetArg(string[] args, int index, double defaultValue)
        {
            double value;
            return (args.Length > index && double.TryParse(args[index], out value)) ? value : defaultValue;
        }
        private static string GetArg(string[] args, int index, string defaultValue)
        {
            return args.Length > index ? args[index] : defaultValue;
        }
    }
}
