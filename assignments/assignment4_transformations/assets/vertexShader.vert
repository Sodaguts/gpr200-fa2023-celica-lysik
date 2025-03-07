#version 450
layout(location = 0) in vec3 vPos;
layout(location = 1) in vec3 vNormal;

out vec3 Normal;
uniform mat4 _Model;
uniform mat4 _View;
uniform mat4 _Projection;

void main(){
	Normal = vNormal;
	gl_Position = _Model * vec4(vPos,1.0);
	gl_Position.z *= -1.0;
}