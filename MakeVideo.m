%framesPath :ͼ����������·����ͬʱҪ��֤ͼ���С��ͬ
%videoName:  ��ʾ��Ҫ��������Ƶ�ļ�������
%quality:    ������Ƶ������ 0-100
%Compressed: ѹ�����ͣ� 'Indeo3'��Ĭ�ϣ�, 'Indeo5', 'Cinepak', 'MSVC', 'RLE' or 'None'
%fps: ֡��
%startFrame ,endFrame ;��ʾ����һ֡��ʼ����һ֡����

if(exist('videoName','file'))
    delete videoName.avi
end

%������Ƶ�Ĳ����趨
aviobj=VideoWriter('video.avi','MPEG-4');  %����һ��avi��Ƶ�ļ����󣬿�ʼʱ��Ϊ��
aviobj.Quality=100;
aviobj.FrameRate=5;
% aviobj.compression='None';
open(aviobj);

%����ͼƬ
for i=1:200    
    frames=video{i};
    writeVideo(aviobj,frames);
%     aviobj=addframe(aviobj,uint8(frames));
end
close(aviobj); % �رմ�����Ƶ