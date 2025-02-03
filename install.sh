#!/bin/bash

# इस स्क्रिप्ट का उद्देश्य आपकी Python स्क्रिप्ट को 24x7 चलाना है।

echo "Installing required packages..."

# अगर Python3 और pip इंस्टॉल नहीं है, तो उसे इंस्टॉल करें
pip install telebot 
pip install flask

# यह सुनिश्चित करें कि सभी पैकेज इंस्टॉल हैं, जिनकी m.py को आवश्यकता हो सकती है
# उदाहरण के लिए, अगर आपकी स्क्रिप्ट को requests या कोई अन्य पैकेज चाहिए, तो उसे इंस्टॉल करें।
pip3 install -r requirements.txt

echo "Setting up your Python script to run 24x7..."

# स्क्रिप्ट को nohup के साथ बैकग्राउंड में चलाने के लिए
nohup python3 /master_nzknkhxdjv/T2/m.py &

# crontab के माध्यम से सुनिश्चित करें कि VPS रिबूट होने पर यह स्क्रिप्ट स्वचालित रूप से चले।
(crontab -l 2>/dev/null; echo "@reboot nohup python3 /master_nzknkhxdjv/T2/m.py &") | crontab -

# यह निर्देश देगा कि VPS रिबूट होने पर Python स्क्रिप्ट को फिर से रन किया जाए।

echo "Your Python script is now set to run 24x7."
