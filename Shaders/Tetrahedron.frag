#version 330 core

in vec3 oColor;
out vec4 FragColor;

void main(){
	//���߸�ƬԪ����ɫֵΪoColor
	FragColor=vec4(oColor,1.0f);
}		