namespace TeddsApiExample
{
    partial class VolumeCalculator
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this._lblHeight = new System.Windows.Forms.Label();
            this._lblLength = new System.Windows.Forms.Label();
            this._lblWidth = new System.Windows.Forms.Label();
            this._lblVolume = new System.Windows.Forms.Label();
            this._cbHeight = new System.Windows.Forms.ComboBox();
            this._cbLength = new System.Windows.Forms.ComboBox();
            this._cbWidth = new System.Windows.Forms.ComboBox();
            this._cbVolume = new System.Windows.Forms.ComboBox();
            this._btnCalculate = new System.Windows.Forms.Button();
            this._udHeight = new System.Windows.Forms.NumericUpDown();
            this._udLength = new System.Windows.Forms.NumericUpDown();
            this._udWidth = new System.Windows.Forms.NumericUpDown();
            this._tbVolume = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this._udHeight)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._udLength)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._udWidth)).BeginInit();
            this.SuspendLayout();
            // 
            // _lblHeight
            // 
            this._lblHeight.AutoSize = true;
            this._lblHeight.Location = new System.Drawing.Point(12, 15);
            this._lblHeight.Name = "_lblHeight";
            this._lblHeight.Size = new System.Drawing.Size(38, 13);
            this._lblHeight.TabIndex = 0;
            this._lblHeight.Text = "Height";
            // 
            // _lblLength
            // 
            this._lblLength.AutoSize = true;
            this._lblLength.Location = new System.Drawing.Point(12, 41);
            this._lblLength.Name = "_lblLength";
            this._lblLength.Size = new System.Drawing.Size(40, 13);
            this._lblLength.TabIndex = 3;
            this._lblLength.Text = "Length";
            // 
            // _lblWidth
            // 
            this._lblWidth.AutoSize = true;
            this._lblWidth.Location = new System.Drawing.Point(12, 67);
            this._lblWidth.Name = "_lblWidth";
            this._lblWidth.Size = new System.Drawing.Size(35, 13);
            this._lblWidth.TabIndex = 6;
            this._lblWidth.Text = "Width";
            // 
            // _lblVolume
            // 
            this._lblVolume.AutoSize = true;
            this._lblVolume.Location = new System.Drawing.Point(12, 122);
            this._lblVolume.Name = "_lblVolume";
            this._lblVolume.Size = new System.Drawing.Size(42, 13);
            this._lblVolume.TabIndex = 10;
            this._lblVolume.Text = "Volume";
            // 
            // _cbHeight
            // 
            this._cbHeight.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._cbHeight.FormattingEnabled = true;
            this._cbHeight.Items.AddRange(new object[] {
            "mm",
            "cm",
            "m",
            "in",
            "ft"});
            this._cbHeight.Location = new System.Drawing.Point(182, 12);
            this._cbHeight.Name = "_cbHeight";
            this._cbHeight.Size = new System.Drawing.Size(121, 21);
            this._cbHeight.TabIndex = 2;
            // 
            // _cbLength
            // 
            this._cbLength.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._cbLength.FormattingEnabled = true;
            this._cbLength.Items.AddRange(new object[] {
            "mm",
            "cm",
            "m",
            "in",
            "ft"});
            this._cbLength.Location = new System.Drawing.Point(182, 38);
            this._cbLength.Name = "_cbLength";
            this._cbLength.Size = new System.Drawing.Size(121, 21);
            this._cbLength.TabIndex = 5;
            // 
            // _cbWidth
            // 
            this._cbWidth.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._cbWidth.FormattingEnabled = true;
            this._cbWidth.Items.AddRange(new object[] {
            "mm",
            "cm",
            "m",
            "in",
            "ft"});
            this._cbWidth.Location = new System.Drawing.Point(182, 64);
            this._cbWidth.Name = "_cbWidth";
            this._cbWidth.Size = new System.Drawing.Size(121, 21);
            this._cbWidth.TabIndex = 8;
            // 
            // _cbVolume
            // 
            this._cbVolume.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._cbVolume.FormattingEnabled = true;
            this._cbVolume.Items.AddRange(new object[] {
            "mm^3",
            "cm^3",
            "m^3",
            "in^3",
            "ft^3"});
            this._cbVolume.Location = new System.Drawing.Point(182, 119);
            this._cbVolume.Name = "_cbVolume";
            this._cbVolume.Size = new System.Drawing.Size(121, 21);
            this._cbVolume.TabIndex = 12;
            // 
            // _btnCalculate
            // 
            this._btnCalculate.Location = new System.Drawing.Point(15, 90);
            this._btnCalculate.Name = "_btnCalculate";
            this._btnCalculate.Size = new System.Drawing.Size(288, 23);
            this._btnCalculate.TabIndex = 9;
            this._btnCalculate.Text = "Calculate Volume";
            this._btnCalculate.UseVisualStyleBackColor = true;
            this._btnCalculate.Click += new System.EventHandler(this.OnCalculate);
            // 
            // _udHeight
            // 
            this._udHeight.Location = new System.Drawing.Point(56, 13);
            this._udHeight.Maximum = new decimal(new int[] {
            100000,
            0,
            0,
            0});
            this._udHeight.Name = "_udHeight";
            this._udHeight.Size = new System.Drawing.Size(120, 20);
            this._udHeight.TabIndex = 1;
            this._udHeight.Value = new decimal(new int[] {
            50,
            0,
            0,
            0});
            // 
            // _udLength
            // 
            this._udLength.Location = new System.Drawing.Point(56, 39);
            this._udLength.Maximum = new decimal(new int[] {
            100000,
            0,
            0,
            0});
            this._udLength.Name = "_udLength";
            this._udLength.Size = new System.Drawing.Size(120, 20);
            this._udLength.TabIndex = 4;
            this._udLength.Value = new decimal(new int[] {
            50,
            0,
            0,
            0});
            // 
            // _udWidth
            // 
            this._udWidth.Location = new System.Drawing.Point(56, 65);
            this._udWidth.Maximum = new decimal(new int[] {
            100000,
            0,
            0,
            0});
            this._udWidth.Name = "_udWidth";
            this._udWidth.Size = new System.Drawing.Size(120, 20);
            this._udWidth.TabIndex = 7;
            this._udWidth.Value = new decimal(new int[] {
            50,
            0,
            0,
            0});
            // 
            // _tbVolume
            // 
            this._tbVolume.Location = new System.Drawing.Point(56, 119);
            this._tbVolume.Name = "_tbVolume";
            this._tbVolume.ReadOnly = true;
            this._tbVolume.Size = new System.Drawing.Size(120, 20);
            this._tbVolume.TabIndex = 11;
            // 
            // VolumeCalculator
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(314, 151);
            this.Controls.Add(this._tbVolume);
            this.Controls.Add(this._udWidth);
            this.Controls.Add(this._udLength);
            this.Controls.Add(this._udHeight);
            this.Controls.Add(this._btnCalculate);
            this.Controls.Add(this._cbVolume);
            this.Controls.Add(this._cbWidth);
            this.Controls.Add(this._cbLength);
            this.Controls.Add(this._cbHeight);
            this.Controls.Add(this._lblVolume);
            this.Controls.Add(this._lblWidth);
            this.Controls.Add(this._lblLength);
            this.Controls.Add(this._lblHeight);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "VolumeCalculator";
            this.Text = "VolumeCalculator";
            ((System.ComponentModel.ISupportInitialize)(this._udHeight)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._udLength)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._udWidth)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label _lblHeight;
        private System.Windows.Forms.Label _lblLength;
        private System.Windows.Forms.Label _lblWidth;
        private System.Windows.Forms.Label _lblVolume;
        private System.Windows.Forms.ComboBox _cbHeight;
        private System.Windows.Forms.ComboBox _cbLength;
        private System.Windows.Forms.ComboBox _cbWidth;
        private System.Windows.Forms.ComboBox _cbVolume;
        private System.Windows.Forms.Button _btnCalculate;
        private System.Windows.Forms.NumericUpDown _udHeight;
        private System.Windows.Forms.NumericUpDown _udLength;
        private System.Windows.Forms.NumericUpDown _udWidth;
        private System.Windows.Forms.TextBox _tbVolume;
    }
}