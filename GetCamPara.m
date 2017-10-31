function [f, sx, sy, x0, y0, b] = GetCamPara(path)

xDoc = xmlread(path);   % ��ȡ�ļ�  test.xml  

% ��ȡ�ڵ�
fPOS = xDoc.getElementsByTagName('f').item(0); %��Slide�ڵ㼯�ϻ�ȡ��һ��Slide�ڵ㣬ע�⼯�ϵ������Ѵ�0��ʼ��
sxPOS = xDoc.getElementsByTagName('sx').item(0); 
syPOS = xDoc.getElementsByTagName('sy').item(0); 
x0POS = xDoc.getElementsByTagName('x0').item(0); 
y0POS = xDoc.getElementsByTagName('y0').item(0); 
bPOS = xDoc.getElementsByTagName('b').item(0); 

% ��ȡ����ֵ����������ֵ���������ֵ
f = str2double(char(fPOS.getAttribute('value'))); %��ȡSlide1��Time����,ע��getTextContent()���ص���java.lang.String���ͣ�ʹ��char��������ת��ΪMATLAB�е��ַ�������
sx = str2double(char(sxPOS.getAttribute('value')));
sy = str2double(char(syPOS.getAttribute('value')));
x0 = str2double(char(x0POS.getAttribute('value')));
y0 = str2double(char(y0POS.getAttribute('value')));
b = str2double(char(bPOS.getAttribute('value')));

end
