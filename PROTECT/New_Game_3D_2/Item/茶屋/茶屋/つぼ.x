xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 90;
 -0.06557;0.55192;-0.16230;,
 0.02436;0.55192;-0.17334;,
 0.02091;0.52457;-0.14882;,
 -0.05629;0.52457;-0.13933;,
 -0.11842;0.52457;-0.09252;,
 -0.13794;0.55192;-0.10777;,
 0.10777;0.55192;-0.13794;,
 0.09252;0.52457;-0.11842;,
 -0.14882;0.52457;-0.02091;,
 -0.17334;0.55192;-0.02436;,
 0.16230;0.55192;-0.06557;,
 0.13934;0.52457;-0.05629;,
 -0.13933;0.52457;0.05629;,
 -0.16230;0.55192;0.06557;,
 0.17334;0.55192;0.02436;,
 0.14881;0.52457;0.02091;,
 -0.09252;0.52457;0.11842;,
 -0.10777;0.55192;0.13794;,
 0.13794;0.55192;0.10777;,
 0.11842;0.52457;0.09252;,
 -0.02091;0.52457;0.14881;,
 -0.02436;0.55192;0.17334;,
 0.13794;0.55192;0.10777;,
 0.06557;0.55192;0.16230;,
 0.05629;0.52457;0.13933;,
 0.11842;0.52457;0.09252;,
 -0.17918;0.45627;-0.13999;,
 -0.08518;0.45627;-0.21083;,
 -0.22517;0.45627;-0.03165;,
 0.03165;0.45627;-0.22517;,
 -0.21083;0.45627;0.08518;,
 0.13999;0.45627;-0.17918;,
 -0.13999;0.45627;0.17918;,
 0.21083;0.45627;-0.08518;,
 -0.03165;0.45627;0.22517;,
 0.22517;0.45627;0.03165;,
 0.08518;0.45627;0.21083;,
 0.17918;0.45627;0.13999;,
 0.17918;0.45627;0.13999;,
 -0.09468;0.36575;-0.23433;,
 -0.19916;0.36575;-0.15560;,
 -0.25027;0.36575;-0.03518;,
 0.03517;0.36575;-0.25027;,
 -0.23433;0.36575;0.09468;,
 0.15560;0.36575;-0.19916;,
 -0.15560;0.36575;0.19915;,
 0.23433;0.36575;-0.09468;,
 -0.03517;0.36575;0.25027;,
 0.25027;0.36575;0.03517;,
 0.09468;0.36575;0.23433;,
 0.19915;0.36575;0.15560;,
 0.19915;0.36575;0.15560;,
 0.00000;-0.01029;-0.00000;,
 -0.14169;-0.00464;-0.11070;,
 -0.06735;-0.00464;-0.16671;,
 0.00000;-0.01029;-0.00000;,
 -0.17805;-0.00464;-0.02502;,
 0.00000;-0.01029;-0.00000;,
 0.02502;-0.00464;-0.17805;,
 0.00000;-0.01029;-0.00000;,
 -0.16671;-0.00464;0.06735;,
 0.00000;-0.01029;-0.00000;,
 0.11070;-0.00464;-0.14169;,
 0.00000;-0.01029;-0.00000;,
 -0.11070;-0.00464;0.14169;,
 0.00000;-0.01029;-0.00000;,
 0.16671;-0.00464;-0.06735;,
 0.00000;-0.01029;-0.00000;,
 -0.02502;-0.00464;0.17805;,
 0.00000;-0.01029;-0.00000;,
 0.17805;-0.00464;0.02502;,
 0.00000;-0.01029;-0.00000;,
 0.06735;-0.00464;0.16671;,
 0.00000;-0.01029;-0.00000;,
 0.14169;-0.00464;0.11070;,
 0.00000;-0.01029;-0.00000;,
 0.14169;-0.00464;0.11070;,
 -0.12635;0.57700;-0.09872;,
 -0.06007;0.57700;-0.14867;,
 0.02232;0.57700;-0.15879;,
 0.09872;0.57700;-0.12635;,
 0.14867;0.57700;-0.06007;,
 0.15879;0.57700;0.02232;,
 0.12635;0.57700;0.09872;,
 0.12635;0.57700;0.09872;,
 0.06007;0.57700;0.14867;,
 -0.02232;0.57700;0.15878;,
 -0.09872;0.57700;0.12635;,
 -0.14867;0.57700;0.06007;,
 -0.15879;0.57700;-0.02232;;
 
 144;
 4;0,1,2,3;,
 4;0,3,4,5;,
 4;1,6,7,2;,
 4;5,4,8,9;,
 4;6,10,11,7;,
 4;9,8,12,13;,
 4;10,14,15,11;,
 4;13,12,16,17;,
 4;14,18,19,15;,
 4;17,16,20,21;,
 4;22,23,24,25;,
 4;21,20,24,23;,
 4;26,4,3,27;,
 4;28,8,4,26;,
 4;27,3,2,29;,
 4;30,12,8,28;,
 4;29,2,7,31;,
 4;32,16,12,30;,
 4;31,7,11,33;,
 4;34,20,16,32;,
 4;33,11,15,35;,
 4;36,24,20,34;,
 4;35,15,19,37;,
 4;38,25,24,36;,
 4;39,40,26,27;,
 4;40,41,28,26;,
 4;42,39,27,29;,
 4;41,43,30,28;,
 4;44,42,29,31;,
 4;43,45,32,30;,
 4;46,44,31,33;,
 4;45,47,34,32;,
 4;48,46,33,35;,
 4;47,49,36,34;,
 4;50,48,35,37;,
 4;49,51,38,36;,
 3;52,53,54;,
 3;55,56,53;,
 3;57,54,58;,
 3;59,60,56;,
 3;61,58,62;,
 3;63,64,60;,
 3;65,62,66;,
 3;67,68,64;,
 3;69,66,70;,
 3;71,72,68;,
 3;73,74,72;,
 3;75,70,76;,
 4;53,56,41,40;,
 4;54,53,40,39;,
 4;56,60,43,41;,
 4;58,54,39,42;,
 4;60,64,45,43;,
 4;62,58,42,44;,
 4;64,68,47,45;,
 4;66,62,44,46;,
 4;68,72,49,47;,
 4;70,66,46,48;,
 4;72,74,51,49;,
 4;76,70,48,50;,
 4;77,78,0,5;,
 4;78,79,1,0;,
 4;79,80,6,1;,
 4;80,81,10,6;,
 4;81,82,14,10;,
 4;82,83,18,14;,
 4;84,85,23,22;,
 4;85,86,21,23;,
 4;86,87,17,21;,
 4;87,88,13,17;,
 4;88,89,9,13;,
 4;89,77,5,9;,
 4;3,2,1,0;,
 4;5,4,3,0;,
 4;2,7,6,1;,
 4;9,8,4,5;,
 4;7,11,10,6;,
 4;13,12,8,9;,
 4;11,15,14,10;,
 4;17,16,12,13;,
 4;15,19,18,14;,
 4;21,20,16,17;,
 4;25,24,23,22;,
 4;23,24,20,21;,
 4;27,3,4,26;,
 4;26,4,8,28;,
 4;29,2,3,27;,
 4;28,8,12,30;,
 4;31,7,2,29;,
 4;30,12,16,32;,
 4;33,11,7,31;,
 4;32,16,20,34;,
 4;35,15,11,33;,
 4;34,20,24,36;,
 4;37,19,15,35;,
 4;36,24,25,38;,
 4;27,26,40,39;,
 4;26,28,41,40;,
 4;29,27,39,42;,
 4;28,30,43,41;,
 4;31,29,42,44;,
 4;30,32,45,43;,
 4;33,31,44,46;,
 4;32,34,47,45;,
 4;35,33,46,48;,
 4;34,36,49,47;,
 4;37,35,48,50;,
 4;36,38,51,49;,
 3;54,53,52;,
 3;53,56,55;,
 3;58,54,57;,
 3;56,60,59;,
 3;62,58,61;,
 3;60,64,63;,
 3;66,62,65;,
 3;64,68,67;,
 3;70,66,69;,
 3;68,72,71;,
 3;72,74,73;,
 3;76,70,75;,
 4;40,41,56,53;,
 4;39,40,53,54;,
 4;41,43,60,56;,
 4;42,39,54,58;,
 4;43,45,64,60;,
 4;44,42,58,62;,
 4;45,47,68,64;,
 4;46,44,62,66;,
 4;47,49,72,68;,
 4;48,46,66,70;,
 4;49,51,74,72;,
 4;50,48,70,76;,
 4;5,0,78,77;,
 4;0,1,79,78;,
 4;1,6,80,79;,
 4;6,10,81,80;,
 4;10,14,82,81;,
 4;14,18,83,82;,
 4;22,23,85,84;,
 4;23,21,86,85;,
 4;21,17,87,86;,
 4;17,13,88,87;,
 4;13,9,89,88;,
 4;9,5,77,89;;
 
 MeshMaterialList {
  22;
  144;
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14,
  14;;
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®¬¨.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®¬¨.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®¬¨.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®¬¨.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®¬¨.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.070000;0.070000;0.070000;;
   0.630000;0.630000;0.630000;;
   TextureFilename {
    "uv®¬¨.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.060000;0.060000;0.060000;;
   0.610000;0.610000;0.610000;;
   TextureFilename {
    "uvì_P.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.060000;0.060000;0.060000;;
   0.610000;0.610000;0.610000;;
   TextureFilename {
    "uvì_P.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.060000;0.060000;0.060000;;
   0.610000;0.610000;0.610000;;
   TextureFilename {
    "uvä.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.060000;0.060000;0.060000;;
   0.610000;0.610000;0.610000;;
   TextureFilename {
    "uvä.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.060000;0.060000;0.060000;;
   0.610000;0.610000;0.610000;;
   TextureFilename {
    "uvø.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.060000;0.060000;0.060000;;
   0.610000;0.610000;0.610000;;
   TextureFilename {
    "uvø.png";
   }
  }
 }
 MeshNormals {
  170;
  -0.679846;0.505647;-0.531159;,
  -0.323190;0.505618;-0.799937;,
  0.120073;0.505596;-0.854374;,
  0.531165;0.505617;-0.679864;,
  0.799938;0.505611;-0.323198;,
  0.854357;0.505626;0.120066;,
  0.679843;0.505656;0.531155;,
  0.323186;0.505625;0.799934;,
  -0.120071;0.505615;0.854363;,
  -0.531155;0.505646;0.679850;,
  -0.799932;0.505625;0.323191;,
  -0.854360;0.505621;-0.120071;,
  -0.000000;-1.000000;0.000000;,
  -0.734039;-0.671227;-0.103156;,
  -0.584107;-0.671235;-0.456358;,
  -0.687274;-0.671232;0.277672;,
  -0.277671;-0.671227;-0.687279;,
  -0.456351;-0.671241;0.584105;,
  0.103159;-0.671222;-0.734043;,
  -0.103158;-0.671225;0.734041;,
  0.456358;-0.671229;-0.584114;,
  0.277670;-0.671226;0.687281;,
  0.687281;-0.671224;-0.277677;,
  0.584104;-0.671240;0.456354;,
  0.734037;-0.671229;0.103156;,
  -0.024745;-0.999507;-0.019333;,
  -0.031097;-0.999507;-0.004370;,
  -0.011763;-0.999507;-0.029116;,
  -0.029116;-0.999507;0.011763;,
  0.004370;-0.999507;-0.031097;,
  -0.019333;-0.999507;0.024745;,
  0.019333;-0.999507;-0.024745;,
  -0.004370;-0.999507;0.031097;,
  0.029116;-0.999507;-0.011763;,
  0.011763;-0.999507;0.029116;,
  0.031097;-0.999507;0.004370;,
  0.024745;-0.999507;0.019333;,
  -0.838006;0.532800;-0.117773;,
  -0.666847;0.532803;-0.520996;,
  -0.784620;0.532802;0.317007;,
  -0.317006;0.532800;-0.784622;,
  -0.520997;0.532804;0.666845;,
  0.117776;0.532798;-0.838007;,
  -0.117775;0.532801;0.838005;,
  0.520998;0.532800;-0.666847;,
  0.317008;0.532800;0.784621;,
  0.784621;0.532799;-0.317010;,
  0.666847;0.532800;0.520999;,
  0.838006;0.532799;0.117776;,
  -0.787399;0.039431;-0.615182;,
  -0.374311;0.039427;-0.926465;,
  -0.989499;0.039428;-0.139060;,
  0.139063;0.039427;-0.989498;,
  -0.926465;0.039428;0.374310;,
  0.615181;0.039431;-0.787399;,
  -0.615183;0.039431;0.787398;,
  0.926463;0.039430;-0.374315;,
  -0.139060;0.039430;0.989499;,
  0.989498;0.039430;0.139064;,
  0.374312;0.039430;0.926464;,
  0.787397;0.039431;0.615184;,
  -0.522504;0.748560;-0.408224;,
  -0.248388;0.748559;-0.614786;,
  -0.656617;0.748558;-0.092278;,
  0.092281;0.748558;-0.656616;,
  -0.614784;0.748560;0.248390;,
  0.408227;0.748557;-0.522506;,
  -0.408224;0.748561;0.522503;,
  0.614790;0.748555;-0.248392;,
  -0.092283;0.748558;0.656616;,
  0.656619;0.748555;0.092283;,
  0.248391;0.748556;0.614789;,
  0.522508;0.748556;0.408228;,
  -0.773165;-0.193195;-0.604063;,
  -0.971613;-0.193195;-0.136541;,
  -0.367541;-0.193195;-0.909719;,
  -0.909720;-0.193195;0.367539;,
  0.136544;-0.193194;-0.971613;,
  -0.604064;-0.193196;0.773164;,
  0.604061;-0.193194;-0.773167;,
  -0.136542;-0.193193;0.971614;,
  0.909718;-0.193194;-0.367545;,
  0.367543;-0.193194;0.909719;,
  0.971613;-0.193194;0.136547;,
  0.773164;-0.193195;0.604064;,
  0.277671;0.671227;0.687279;,
  -0.103159;0.671222;0.734043;,
  0.584107;0.671235;0.456358;,
  -0.456358;0.671229;0.584114;,
  0.734039;0.671227;0.103156;,
  -0.687281;0.671224;0.277677;,
  0.687274;0.671232;-0.277672;,
  -0.734037;0.671229;-0.103156;,
  0.456351;0.671241;-0.584105;,
  -0.584104;0.671240;-0.456354;,
  0.103158;0.671225;-0.734041;,
  -0.277670;0.671226;-0.687281;,
  0.317006;-0.532800;0.784622;,
  0.248388;-0.748559;0.614786;,
  0.522504;-0.748560;0.408224;,
  0.666847;-0.532803;0.520996;,
  0.656617;-0.748558;0.092278;,
  0.838006;-0.532800;0.117773;,
  -0.117776;-0.532798;0.838007;,
  -0.092281;-0.748558;0.656616;,
  0.614784;-0.748560;-0.248390;,
  0.784620;-0.532802;-0.317007;,
  -0.520998;-0.532800;0.666847;,
  -0.408227;-0.748557;0.522506;,
  0.408224;-0.748561;-0.522503;,
  0.520997;-0.532804;-0.666845;,
  -0.784621;-0.532799;0.317010;,
  -0.614790;-0.748555;0.248392;,
  0.092283;-0.748558;-0.656616;,
  0.117775;-0.532801;-0.838005;,
  -0.838006;-0.532799;-0.117776;,
  -0.656619;-0.748555;-0.092283;,
  -0.248391;-0.748556;-0.614789;,
  -0.317008;-0.532800;-0.784621;,
  -0.666847;-0.532800;-0.520999;,
  -0.522508;-0.748556;-0.408228;,
  0.787399;-0.039431;0.615182;,
  0.374311;-0.039427;0.926465;,
  0.989499;-0.039428;0.139060;,
  -0.139063;-0.039427;0.989498;,
  0.926465;-0.039428;-0.374310;,
  -0.615181;-0.039431;0.787399;,
  0.615183;-0.039431;-0.787398;,
  -0.926463;-0.039430;0.374315;,
  0.139060;-0.039430;-0.989499;,
  -0.989498;-0.039430;-0.139064;,
  -0.374312;-0.039430;-0.926464;,
  -0.787397;-0.039431;-0.615184;,
  0.011763;0.999507;0.029116;,
  0.024745;0.999507;0.019333;,
  0.000000;1.000000;-0.000000;,
  0.031097;0.999507;0.004370;,
  -0.004370;0.999507;0.031097;,
  0.029116;0.999507;-0.011763;,
  -0.019333;0.999507;0.024745;,
  0.019333;0.999507;-0.024745;,
  -0.029116;0.999507;0.011763;,
  0.004370;0.999507;-0.031097;,
  -0.031097;0.999507;-0.004370;,
  -0.011763;0.999507;-0.029116;,
  -0.024745;0.999507;-0.019333;,
  0.971613;0.193195;0.136541;,
  0.773165;0.193195;0.604063;,
  0.367541;0.193195;0.909719;,
  0.909720;0.193195;-0.367539;,
  -0.136544;0.193194;0.971613;,
  0.604064;0.193196;-0.773164;,
  -0.604061;0.193194;0.773167;,
  0.136542;0.193193;-0.971614;,
  -0.909718;0.193194;0.367545;,
  -0.367543;0.193194;-0.909719;,
  -0.971613;0.193194;-0.136547;,
  -0.773164;0.193195;-0.604064;,
  0.679846;-0.505647;0.531159;,
  0.323190;-0.505618;0.799937;,
  -0.120073;-0.505596;0.854374;,
  -0.531165;-0.505617;0.679864;,
  -0.799938;-0.505611;0.323198;,
  -0.854357;-0.505626;-0.120066;,
  -0.679843;-0.505656;-0.531155;,
  -0.323186;-0.505625;-0.799934;,
  0.120071;-0.505615;-0.854363;,
  0.531155;-0.505646;-0.679850;,
  0.799932;-0.505625;-0.323191;,
  0.854360;-0.505621;0.120071;;
  144;
  4;16,18,18,16;,
  4;16,16,14,14;,
  4;18,20,20,18;,
  4;14,14,13,13;,
  4;20,22,22,20;,
  4;13,13,15,15;,
  4;22,24,24,22;,
  4;15,15,17,17;,
  4;24,23,23,24;,
  4;17,17,19,19;,
  4;23,21,21,23;,
  4;19,19,21,21;,
  4;38,61,62,40;,
  4;37,63,61,38;,
  4;40,62,64,42;,
  4;39,65,63,37;,
  4;42,64,66,44;,
  4;41,67,65,39;,
  4;44,66,68,46;,
  4;43,69,67,41;,
  4;46,68,70,48;,
  4;45,71,69,43;,
  4;48,70,72,47;,
  4;47,72,71,45;,
  4;50,49,38,40;,
  4;49,51,37,38;,
  4;52,50,40,42;,
  4;51,53,39,37;,
  4;54,52,42,44;,
  4;53,55,41,39;,
  4;56,54,44,46;,
  4;55,57,43,41;,
  4;58,56,46,48;,
  4;57,59,45,43;,
  4;60,58,48,47;,
  4;59,60,47,45;,
  3;12,25,27;,
  3;12,26,25;,
  3;12,27,29;,
  3;12,28,26;,
  3;12,29,31;,
  3;12,30,28;,
  3;12,31,33;,
  3;12,32,30;,
  3;12,33,35;,
  3;12,34,32;,
  3;12,36,34;,
  3;12,35,36;,
  4;73,74,51,49;,
  4;75,73,49,50;,
  4;74,76,53,51;,
  4;77,75,50,52;,
  4;76,78,55,53;,
  4;79,77,52,54;,
  4;78,80,57,55;,
  4;81,79,54,56;,
  4;80,82,59,57;,
  4;83,81,56,58;,
  4;82,84,60,59;,
  4;84,83,58,60;,
  4;0,1,1,0;,
  4;1,2,2,1;,
  4;2,3,3,2;,
  4;3,4,4,3;,
  4;4,5,5,4;,
  4;5,6,6,5;,
  4;6,7,7,6;,
  4;7,8,8,7;,
  4;8,9,9,8;,
  4;9,10,10,9;,
  4;10,11,11,10;,
  4;11,0,0,11;,
  4;85,86,86,85;,
  4;87,87,85,85;,
  4;86,88,88,86;,
  4;89,89,87,87;,
  4;88,90,90,88;,
  4;91,91,89,89;,
  4;90,92,92,90;,
  4;93,93,91,91;,
  4;92,94,94,92;,
  4;95,95,93,93;,
  4;94,96,96,94;,
  4;96,96,95,95;,
  4;97,98,99,100;,
  4;100,99,101,102;,
  4;103,104,98,97;,
  4;102,101,105,106;,
  4;107,108,104,103;,
  4;106,105,109,110;,
  4;111,112,108,107;,
  4;110,109,113,114;,
  4;115,116,112,111;,
  4;114,113,117,118;,
  4;119,120,116,115;,
  4;118,117,120,119;,
  4;97,100,121,122;,
  4;100,102,123,121;,
  4;103,97,122,124;,
  4;102,106,125,123;,
  4;107,103,124,126;,
  4;106,110,127,125;,
  4;111,107,126,128;,
  4;110,114,129,127;,
  4;115,111,128,130;,
  4;114,118,131,129;,
  4;119,115,130,132;,
  4;118,119,132,131;,
  3;133,134,135;,
  3;134,136,135;,
  3;137,133,135;,
  3;136,138,135;,
  3;139,137,135;,
  3;138,140,135;,
  3;141,139,135;,
  3;140,142,135;,
  3;143,141,135;,
  3;142,144,135;,
  3;144,145,135;,
  3;145,143,135;,
  4;121,123,146,147;,
  4;122,121,147,148;,
  4;123,125,149,146;,
  4;124,122,148,150;,
  4;125,127,151,149;,
  4;126,124,150,152;,
  4;127,129,153,151;,
  4;128,126,152,154;,
  4;129,131,155,153;,
  4;130,128,154,156;,
  4;131,132,157,155;,
  4;132,130,156,157;,
  4;158,159,159,158;,
  4;159,160,160,159;,
  4;160,161,161,160;,
  4;161,162,162,161;,
  4;162,163,163,162;,
  4;163,164,164,163;,
  4;164,165,165,164;,
  4;165,166,166,165;,
  4;166,167,167,166;,
  4;167,168,168,167;,
  4;168,169,169,168;,
  4;169,158,158,169;;
 }
 MeshTextureCoords {
  90;
  0.248250;0.869580;,
  0.283130;0.869580;,
  0.283130;0.876230;,
  0.248250;0.876230;,
  0.213370;0.876230;,
  0.213370;0.869580;,
  0.318010;0.869580;,
  0.318010;0.876230;,
  0.178490;0.876230;,
  0.178490;0.869580;,
  0.352880;0.869580;,
  0.352880;0.876230;,
  0.143620;0.876230;,
  0.143620;0.869580;,
  0.387760;0.869580;,
  0.387760;0.876230;,
  0.108740;0.876230;,
  0.108740;0.869580;,
  0.422640;0.869580;,
  0.422640;0.876230;,
  0.073860;0.876230;,
  0.073860;0.869580;,
  0.013980;0.869580;,
  0.038980;0.869580;,
  0.038980;0.876230;,
  0.013980;0.876230;,
  0.213370;0.889040;,
  0.248250;0.889040;,
  0.178490;0.889040;,
  0.283130;0.889040;,
  0.143620;0.889040;,
  0.318010;0.889040;,
  0.108740;0.889040;,
  0.352880;0.889040;,
  0.073860;0.889040;,
  0.387760;0.889040;,
  0.038980;0.889040;,
  0.422640;0.889040;,
  0.013980;0.889040;,
  0.248250;0.907070;,
  0.213370;0.907070;,
  0.178490;0.907070;,
  0.283130;0.907070;,
  0.143620;0.907070;,
  0.318010;0.907070;,
  0.108740;0.907070;,
  0.352880;0.907070;,
  0.073860;0.907070;,
  0.387760;0.907070;,
  0.038980;0.907070;,
  0.422640;0.907070;,
  0.013980;0.907070;,
  0.230810;0.989470;,
  0.213370;0.977620;,
  0.248250;0.977620;,
  0.195930;0.989470;,
  0.178490;0.977620;,
  0.265690;0.989470;,
  0.283130;0.977620;,
  0.161050;0.989470;,
  0.143620;0.977620;,
  0.300570;0.989470;,
  0.318010;0.977620;,
  0.126180;0.989470;,
  0.108740;0.977620;,
  0.335440;0.989470;,
  0.352880;0.977620;,
  0.091300;0.989470;,
  0.073860;0.977620;,
  0.370320;0.989470;,
  0.387760;0.977620;,
  0.056420;0.989470;,
  0.038980;0.977620;,
  0.026480;0.989470;,
  0.013980;0.977620;,
  0.405200;0.989470;,
  0.422640;0.977620;,
  0.213370;0.857010;,
  0.248250;0.857010;,
  0.283130;0.857010;,
  0.318010;0.857010;,
  0.352880;0.857010;,
  0.387760;0.857010;,
  0.422640;0.857010;,
  0.013980;0.857010;,
  0.038980;0.857010;,
  0.073860;0.857010;,
  0.108740;0.857010;,
  0.143620;0.857010;,
  0.178490;0.857010;;
 }
}
