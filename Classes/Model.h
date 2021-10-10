#pragma once
#include"Mesh.h"

unsigned int TextureFromFile(const char* path, const std::string& directory, bool gamma = false);
class Model {
public:
	Model(const char* path);
	void Draw(Shader shader);
private:
	
	std::vector<Mesh> meshes;
	std::string directory;
	//�붥�㸴�����ƣ���ֹ������
	std::vector<Texture> textures_loaded;
	void loadModel(std::string const &path);
	void processNode(aiNode* node, const aiScene* scene);
	Mesh processMesh(aiMesh* mesh, const aiScene* scene);
	std::vector<Texture> loadMaterialTextures(aiMaterial* mat,
		aiTextureType type, std::string typeName);

};
