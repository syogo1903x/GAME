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
 112;
 -1.54823;2.83311;0.88281;,
 -1.54811;2.84958;0.86638;,
 -1.54800;2.83314;0.85954;,
 -1.54830;2.85638;0.88284;,
 -1.54844;2.84954;0.89929;,
 -1.54846;2.83308;0.90608;,
 -1.54835;2.81664;0.89924;,
 -1.54818;2.80984;0.88278;,
 -1.54802;2.81668;0.86633;,
 1.52299;2.83373;0.88531;,
 1.52322;2.83375;0.86204;,
 1.52310;2.85020;0.86888;,
 1.52293;2.85700;0.88534;,
 1.52278;2.85016;0.90179;,
 1.52275;2.83370;0.90858;,
 1.52286;2.81725;0.90175;,
 1.52304;2.81045;0.88528;,
 1.52319;2.81729;0.86884;,
 1.29716;2.85015;0.86869;,
 1.52310;2.85020;0.86888;,
 1.52322;2.83375;0.86204;,
 1.29726;2.83371;0.86186;,
 1.29698;2.85695;0.88516;,
 1.52293;2.85700;0.88534;,
 1.52319;2.81729;0.86884;,
 1.29723;2.81724;0.86865;,
 1.29682;2.85011;0.90160;,
 1.52278;2.85016;0.90179;,
 1.52304;2.81045;0.88528;,
 1.29709;2.81041;0.88510;,
 1.29679;2.83365;0.90840;,
 1.52275;2.83370;0.90858;,
 1.52286;2.81725;0.90175;,
 1.29691;2.81720;0.90156;,
 -1.32032;2.83319;0.85972;,
 -1.32035;2.81672;0.86652;,
 -1.54802;2.81668;0.86633;,
 -1.54800;2.83314;0.85954;,
 -1.54811;2.84958;0.86638;,
 -1.32043;2.84963;0.86656;,
 -1.32050;2.80988;0.88296;,
 -1.54818;2.80984;0.88278;,
 -1.54830;2.85638;0.88284;,
 -1.32062;2.85642;0.88302;,
 -1.32068;2.81668;0.89943;,
 -1.54835;2.81664;0.89924;,
 -1.54844;2.84954;0.89929;,
 -1.32077;2.84959;0.89947;,
 -1.32079;2.83312;0.90626;,
 -1.54846;2.83308;0.90608;,
 -0.31679;0.03703;-0.87407;,
 -0.31671;0.06146;-0.89844;,
 -0.31665;0.03707;-0.90858;,
 -0.31683;0.07153;-0.87403;,
 -0.31692;0.06140;-0.84964;,
 -0.31693;0.03699;-0.83956;,
 -0.31686;0.01260;-0.84970;,
 -0.31675;0.00252;-0.87411;,
 -0.31666;0.01266;-0.89850;,
 1.54832;0.03795;-0.87036;,
 1.54846;0.03799;-0.90487;,
 1.54839;0.06237;-0.89473;,
 1.54829;0.07245;-0.87031;,
 1.54820;0.06231;-0.84592;,
 1.54818;0.03790;-0.83585;,
 1.54825;0.01351;-0.84599;,
 1.54836;0.00343;-0.87040;,
 1.54845;0.01357;-0.89479;,
 1.41118;0.06231;-0.89500;,
 1.54839;0.06237;-0.89473;,
 1.54846;0.03799;-0.90487;,
 1.41124;0.03792;-0.90514;,
 1.41107;0.07238;-0.87059;,
 1.54829;0.07245;-0.87031;,
 1.54845;0.01357;-0.89479;,
 1.41122;0.01350;-0.89506;,
 1.41097;0.06224;-0.84620;,
 1.54820;0.06231;-0.84592;,
 1.54836;0.00343;-0.87040;,
 1.41114;0.00337;-0.87067;,
 1.41096;0.03783;-0.83612;,
 1.54818;0.03790;-0.83585;,
 1.54825;0.01351;-0.84599;,
 1.41103;0.01344;-0.84626;,
 -0.17838;0.03714;-0.90830;,
 -0.17840;0.01273;-0.89823;,
 -0.31666;0.01266;-0.89850;,
 -0.31665;0.03707;-0.90858;,
 -0.31671;0.06146;-0.89844;,
 -0.17845;0.06152;-0.89817;,
 -0.17849;0.00259;-0.87384;,
 -0.31675;0.00252;-0.87411;,
 -0.31683;0.07153;-0.87403;,
 -0.17856;0.07160;-0.87375;,
 -0.17860;0.01266;-0.84943;,
 -0.31686;0.01260;-0.84970;,
 -0.31692;0.06140;-0.84964;,
 -0.17865;0.06147;-0.84936;,
 -0.17866;0.03705;-0.83929;,
 -0.31693;0.03699;-0.83956;,
 1.41064;2.21873;0.68243;,
 1.41079;1.50511;0.39320;,
 -0.19511;1.50440;0.39056;,
 -0.19528;2.21715;0.68015;,
 1.41099;0.92580;-0.02023;,
 -0.19491;0.92607;-0.02289;,
 1.41123;0.41695;-0.46891;,
 -0.19469;0.41816;-0.47122;,
 1.41146;0.04237;-0.86118;,
 -0.19446;0.04433;-0.86286;,
 1.41035;2.82019;0.88453;,
 -0.19557;2.81966;0.88239;;
 
 90;
 3;0,1,2;,
 3;0,3,1;,
 3;0,4,3;,
 3;0,5,4;,
 3;0,6,5;,
 3;0,7,6;,
 3;0,8,7;,
 3;0,2,8;,
 3;9,10,11;,
 3;9,11,12;,
 3;9,12,13;,
 3;9,13,14;,
 3;9,14,15;,
 3;9,15,16;,
 3;9,16,17;,
 3;9,17,10;,
 4;18,19,20,21;,
 4;18,22,23,19;,
 4;21,20,24,25;,
 4;22,26,27,23;,
 4;25,24,28,29;,
 4;26,30,31,27;,
 4;29,28,32,33;,
 4;30,33,32,31;,
 4;34,21,25,35;,
 4;34,35,36,37;,
 4;34,37,38,39;,
 4;34,39,18,21;,
 4;35,25,29,40;,
 4;35,40,41,36;,
 4;39,38,42,43;,
 4;39,43,22,18;,
 4;40,29,33,44;,
 4;40,44,45,41;,
 4;43,42,46,47;,
 4;43,47,26,22;,
 4;44,33,30,48;,
 4;44,48,49,45;,
 4;47,46,49,48;,
 4;47,48,30,26;,
 3;50,51,52;,
 3;50,53,51;,
 3;50,54,53;,
 3;50,55,54;,
 3;50,56,55;,
 3;50,57,56;,
 3;50,58,57;,
 3;50,52,58;,
 3;59,60,61;,
 3;59,61,62;,
 3;59,62,63;,
 3;59,63,64;,
 3;59,64,65;,
 3;59,65,66;,
 3;59,66,67;,
 3;59,67,60;,
 4;68,69,70,71;,
 4;68,72,73,69;,
 4;71,70,74,75;,
 4;72,76,77,73;,
 4;75,74,78,79;,
 4;76,80,81,77;,
 4;79,78,82,83;,
 4;80,83,82,81;,
 4;84,71,75,85;,
 4;84,85,86,87;,
 4;84,87,88,89;,
 4;84,89,68,71;,
 4;85,75,79,90;,
 4;85,90,91,86;,
 4;89,88,92,93;,
 4;89,93,72,68;,
 4;90,79,83,94;,
 4;90,94,95,91;,
 4;93,92,96,97;,
 4;93,97,76,72;,
 4;94,83,80,98;,
 4;94,98,99,95;,
 4;97,96,99,98;,
 4;97,98,80,76;,
 4;100,101,102,103;,
 4;101,104,105,102;,
 4;104,106,107,105;,
 4;106,108,109,107;,
 4;110,100,103,111;,
 4;103,102,101,100;,
 4;102,105,104,101;,
 4;105,107,106,104;,
 4;107,109,108,106;,
 4;111,103,100,110;;
 
 MeshMaterialList {
  22;
  90;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9;;
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
  112;
  -0.999946;-0.002698;-0.010014;,
  -0.999946;-0.002750;-0.009976;,
  -0.999945;-0.002736;-0.010106;,
  -0.999945;-0.002865;-0.010092;,
  -0.999946;-0.002875;-0.009939;,
  -0.999947;-0.002782;-0.009930;,
  -0.999949;-0.002538;-0.009786;,
  -0.999947;-0.002394;-0.010060;,
  -0.999944;-0.002644;-0.010226;,
  0.999948;0.002695;0.009851;,
  0.999950;0.002614;0.009677;,
  0.999947;0.002440;0.009962;,
  0.999943;0.002514;0.010347;,
  0.999944;0.002537;0.010273;,
  0.999946;0.002330;0.010118;,
  0.999946;0.002176;0.010119;,
  0.999947;0.002389;0.010063;,
  0.999946;0.002462;0.010051;,
  0.000434;0.708003;-0.706210;,
  0.000816;0.001294;-0.999999;,
  -0.000201;0.999999;0.001236;,
  0.000719;-0.706209;-0.708003;,
  -0.000719;0.706166;0.708046;,
  0.000202;-0.999999;-0.001338;,
  -0.000814;-0.001245;0.999999;,
  -0.000432;-0.707988;0.706225;,
  0.000818;0.001324;-0.999999;,
  0.000718;-0.706210;-0.708002;,
  0.000437;0.708003;-0.706210;,
  0.000196;-0.999999;-0.001315;,
  -0.000200;0.999999;0.001204;,
  -0.000440;-0.708024;0.706188;,
  -0.000716;0.706200;0.708012;,
  -0.000815;-0.001272;0.999999;,
  -0.999991;-0.001105;-0.004097;,
  -0.999991;-0.001122;-0.004058;,
  -0.999991;-0.001121;-0.004120;,
  -0.999991;-0.001182;-0.004141;,
  -0.999991;-0.001189;-0.004094;,
  -0.999991;-0.001162;-0.004087;,
  -0.999991;-0.001041;-0.003999;,
  -0.999991;-0.000952;-0.004100;,
  -0.999991;-0.001068;-0.004174;,
  0.999991;0.001164;0.004034;,
  0.999992;0.001152;0.003947;,
  0.999991;0.001065;0.004035;,
  0.999991;0.001055;0.004219;,
  0.999991;0.001020;0.004229;,
  0.999991;0.000946;0.004179;,
  0.999991;0.000896;0.004178;,
  0.999991;0.000993;0.004130;,
  0.999991;0.001036;0.004119;,
  0.001062;0.708003;-0.706208;,
  0.001994;0.001297;-0.999997;,
  -0.000487;0.999999;0.001244;,
  0.001758;-0.706200;-0.708010;,
  -0.001751;0.706165;0.708045;,
  0.000494;-0.999999;-0.001324;,
  -0.001987;-0.001254;0.999997;,
  -0.001054;-0.707983;0.706229;,
  0.001997;0.001311;-0.999997;,
  0.001754;-0.706204;-0.708006;,
  0.001065;0.707998;-0.706213;,
  0.000477;-0.999999;-0.001300;,
  -0.000491;0.999999;0.001207;,
  -0.001074;-0.708016;0.706196;,
  -0.001752;0.706192;0.708018;,
  -0.001990;-0.001297;0.999997;,
  0.001124;0.347354;-0.937734;,
  0.001216;0.481944;-0.876201;,
  0.001364;0.622222;-0.782840;,
  0.001516;0.693064;-0.720875;,
  0.001567;0.723289;-0.690543;,
  0.001095;0.318362;-0.947969;,
  0.000435;0.708014;-0.706198;,
  0.000817;0.001273;-0.999999;,
  -0.000199;0.999999;0.001270;,
  0.000720;-0.706214;-0.707998;,
  -0.000718;0.706147;0.708065;,
  0.000203;-0.999999;-0.001324;,
  -0.000814;-0.001251;0.999999;,
  -0.000430;-0.707966;0.706246;,
  0.000718;-0.706216;-0.707996;,
  0.000821;0.001332;-0.999999;,
  0.000440;0.708014;-0.706199;,
  0.000190;-0.999999;-0.001279;,
  -0.000198;0.999999;0.001206;,
  -0.000447;-0.708039;0.706173;,
  -0.000714;0.706215;0.707997;,
  -0.000815;-0.001304;0.999999;,
  0.001066;0.708019;-0.706193;,
  0.001999;0.001288;-0.999997;,
  -0.000481;0.999999;0.001280;,
  0.001760;-0.706205;-0.708005;,
  -0.001745;0.706152;0.708058;,
  0.000497;-0.999999;-0.001313;,
  -0.001983;-0.001244;0.999997;,
  -0.001048;-0.707964;0.706247;,
  0.001753;-0.706214;-0.707996;,
  0.002006;0.001318;-0.999997;,
  0.001073;0.708009;-0.706203;,
  0.000463;-0.999999;-0.001265;,
  -0.000489;0.999999;0.001205;,
  -0.001088;-0.708031;0.706181;,
  -0.001749;0.706206;0.708004;,
  -0.001990;-0.001329;0.999997;,
  -0.001124;-0.347354;0.937734;,
  -0.001216;-0.481944;0.876201;,
  -0.001364;-0.622222;0.782840;,
  -0.001516;-0.693064;0.720875;,
  -0.001567;-0.723289;0.690543;,
  -0.001095;-0.318362;0.947969;;
  90;
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,6,5;,
  3;0,7,6;,
  3;0,8,7;,
  3;0,1,8;,
  3;17,9,10;,
  3;17,10,11;,
  3;17,11,12;,
  3;17,12,13;,
  3;17,13,14;,
  3;17,14,15;,
  3;17,15,16;,
  3;17,16,9;,
  4;18,74,75,19;,
  4;18,20,76,74;,
  4;19,75,77,21;,
  4;20,22,78,76;,
  4;21,77,79,23;,
  4;22,24,80,78;,
  4;23,79,81,25;,
  4;24,25,81,80;,
  4;26,19,21,27;,
  4;26,27,82,83;,
  4;26,83,84,28;,
  4;26,28,18,19;,
  4;27,21,23,29;,
  4;27,29,85,82;,
  4;28,84,86,30;,
  4;28,30,20,18;,
  4;29,23,25,31;,
  4;29,31,87,85;,
  4;30,86,88,32;,
  4;30,32,22,20;,
  4;31,25,24,33;,
  4;31,33,89,87;,
  4;32,88,89,33;,
  4;32,33,24,22;,
  3;34,36,35;,
  3;34,37,36;,
  3;34,38,37;,
  3;34,39,38;,
  3;34,40,39;,
  3;34,41,40;,
  3;34,42,41;,
  3;34,35,42;,
  3;51,43,44;,
  3;51,44,45;,
  3;51,45,46;,
  3;51,46,47;,
  3;51,47,48;,
  3;51,48,49;,
  3;51,49,50;,
  3;51,50,43;,
  4;52,90,91,53;,
  4;52,54,92,90;,
  4;53,91,93,55;,
  4;54,56,94,92;,
  4;55,93,95,57;,
  4;56,58,96,94;,
  4;57,95,97,59;,
  4;58,59,97,96;,
  4;60,53,55,61;,
  4;60,61,98,99;,
  4;60,99,100,62;,
  4;60,62,52,53;,
  4;61,55,57,63;,
  4;61,63,101,98;,
  4;62,100,102,64;,
  4;62,64,54,52;,
  4;63,57,59,65;,
  4;63,65,103,101;,
  4;64,102,104,66;,
  4;64,66,56,54;,
  4;65,59,58,67;,
  4;65,67,105,103;,
  4;66,104,105,67;,
  4;66,67,58,56;,
  4;68,69,69,68;,
  4;69,70,70,69;,
  4;70,71,71,70;,
  4;71,72,72,71;,
  4;73,68,68,73;,
  4;106,107,107,106;,
  4;107,108,108,107;,
  4;108,109,109,108;,
  4;109,110,110,109;,
  4;111,106,106,111;;
 }
 MeshTextureCoords {
  112;
  0.970620;0.481810;,
  0.962250;0.473450;,
  0.958790;0.481810;,
  0.970620;0.469980;,
  0.978990;0.473450;,
  0.982450;0.481810;,
  0.978990;0.490190;,
  0.970620;0.493660;,
  0.962250;0.490190;,
  0.970620;0.481810;,
  0.958790;0.481810;,
  0.962250;0.473450;,
  0.970620;0.469980;,
  0.978990;0.473450;,
  0.982450;0.481810;,
  0.978990;0.490190;,
  0.970620;0.493660;,
  0.962250;0.490190;,
  0.936300;0.473310;,
  0.956730;0.473310;,
  0.956730;0.478530;,
  0.936300;0.478530;,
  0.936300;0.468820;,
  0.956730;0.468820;,
  0.956730;0.483760;,
  0.936300;0.483760;,
  0.936300;0.473310;,
  0.956730;0.473310;,
  0.956730;0.489420;,
  0.936300;0.489420;,
  0.936300;0.478530;,
  0.956730;0.478530;,
  0.956730;0.483760;,
  0.936300;0.483760;,
  0.699610;0.478530;,
  0.699610;0.483760;,
  0.679010;0.483760;,
  0.679010;0.478530;,
  0.679010;0.473310;,
  0.699610;0.473310;,
  0.699610;0.489420;,
  0.679010;0.489420;,
  0.679010;0.468820;,
  0.699610;0.468820;,
  0.699610;0.483760;,
  0.679010;0.483760;,
  0.679010;0.473310;,
  0.699610;0.473310;,
  0.699610;0.478530;,
  0.679010;0.478530;,
  0.970620;0.481810;,
  0.962250;0.473450;,
  0.958790;0.481810;,
  0.970620;0.469980;,
  0.978990;0.473450;,
  0.982450;0.481810;,
  0.978990;0.490190;,
  0.970620;0.493660;,
  0.962250;0.490190;,
  0.970620;0.481810;,
  0.958790;0.481810;,
  0.962250;0.473450;,
  0.970620;0.469980;,
  0.978990;0.473450;,
  0.982450;0.481810;,
  0.978990;0.490190;,
  0.970620;0.493660;,
  0.962250;0.490190;,
  0.936300;0.473310;,
  0.956730;0.473310;,
  0.956730;0.478530;,
  0.936300;0.478530;,
  0.936300;0.468820;,
  0.956730;0.468820;,
  0.956730;0.483760;,
  0.936300;0.483760;,
  0.936300;0.473310;,
  0.956730;0.473310;,
  0.956730;0.489420;,
  0.936300;0.489420;,
  0.936300;0.478530;,
  0.956730;0.478530;,
  0.956730;0.483760;,
  0.936300;0.483760;,
  0.699610;0.478530;,
  0.699610;0.483760;,
  0.679010;0.483760;,
  0.679010;0.478530;,
  0.679010;0.473310;,
  0.699610;0.473310;,
  0.699610;0.489420;,
  0.679010;0.489420;,
  0.679010;0.468820;,
  0.699610;0.468820;,
  0.699610;0.483760;,
  0.679010;0.483760;,
  0.679010;0.473310;,
  0.699610;0.473310;,
  0.699610;0.478530;,
  0.679010;0.478530;,
  0.981570;0.590990;,
  0.981830;0.688470;,
  0.778530;0.689190;,
  0.778270;0.591790;,
  0.982050;0.778570;,
  0.778750;0.779180;,
  0.982250;0.864450;,
  0.778960;0.864950;,
  0.982410;0.933120;,
  0.779120;0.933480;,
  0.981330;0.510670;,
  0.778030;0.511330;;
 }
}
