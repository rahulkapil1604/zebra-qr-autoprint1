# Zebra QR AutoPrint Tool

यह tool Zebra DS9308 QR scanner से स्कैन की गई value को Zebra ZD230 प्रिंटर पर सीधे प्रिंट करता है – बिना date/time और बिना manual enter के।

## 📦 आवश्यकताएँ
- Zebra DS9308 QR scanner (USB)
- Zebra ZD230 thermal printer (driver: "ZDesigner ZD230")
- Windows PC

## 🛠 Setup Instructions

1. GitHub repo clone करें
2. AutoHotkey install करें: https://www.autohotkey.com/
3. `autoprint.ahk` रन करें → Tray में silent रहेगा
4. किसी भी textbox में QR स्कैन करें → प्रिंट हो जाएगा

## ⚙ GitHub Actions

हर commit पर `.exe` build होता है और Releases tab में downloadable होता है।

## 🧾 Output Format (ZPL)
```
^XA
^FO50,50^A0N,36,36^FD[QR_VALUE]^FS
^XZ
```

## 📄 License
MIT
