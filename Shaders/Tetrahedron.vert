#version 330 core
//�������鲼�֣�����GPU��Щ��λ�ã���Щ����ɫ
layout(location = 0) in vec3 aPos;
layout(location = 1) in vec3 aColor;

//��Ҫ������һ�׶���ɫ��������
out vec3 oColor;

//�ܹ���CPU�л�ù���������
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main(){
	//����GPU��Ҫ���ƵĶ����λ�þ��Ǵ�������λ��ֵ
	gl_Position=projection * view * model * vec4(aPos.x,aPos.y,aPos.z,1.0);
	//Ƭ����ɫ�������ܶ�����ɫ���������ɫֵ
	oColor=aColor;
}
