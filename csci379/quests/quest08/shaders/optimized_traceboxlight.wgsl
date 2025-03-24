/* 
 * Copyright (c) 2025 SingChun LEE @ Bucknell University. CC BY-NC 4.0.
 * 
 * This code is provided mainly for educational purposes at Bucknell University.
 *
 * This code is licensed under the Creative Commons Attribution-NonCommerical 4.0
 * International License. To view a copy of the license, visit 
 *   https://creativecommons.org/licenses/by-nc/4.0/
 * or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
 *
 * You are free to:
 *  - Share: copy and redistribute the material in any medium or format.
 *  - Adapt: remix, transform, and build upon the material.
 *
 * Under the following terms:
 *  - Attribution: You must give appropriate credit, provide a link to the license,
 *                 and indicate if changes where made.
 *  - NonCommerical: You may not use the material for commerical purposes.
 *  - No additional restrictions: You may not apply legal terms or technological 
 *                                measures that legally restrict others from doing
 *                                anything the license permits.
 */

struct tint_symbol {
  /* @offset(0) */
  tint_symbol_1 : f32,
  /* @offset(4) */
  tint_symbol_2 : f32,
  /* @offset(8) */
  tint_symbol_3 : f32,
  /* @offset(12) */
  tint_symbol_4 : f32,
  /* @offset(16) */
  tint_symbol_5 : f32,
  /* @offset(20) */
  tint_symbol_6 : f32,
  /* @offset(24) */
  tint_symbol_7 : f32,
  /* @offset(28) */
  tint_symbol_8 : f32,
  /* @offset(32) */
  tint_symbol_9 : f32,
  /* @offset(36) */
  tint_symbol_10 : f32,
  /* @offset(40) */
  tint_symbol_11 : f32,
  /* @offset(44) */
  tint_symbol_12 : f32,
  /* @offset(48) */
  tint_symbol_13 : f32,
  /* @offset(52) */
  tint_symbol_14 : f32,
  /* @offset(56) */
  tint_symbol_15 : f32,
  /* @offset(60) */
  tint_symbol_16 : f32,
}

struct tint_symbol_63 {
  /* @offset(0) */
  tint_symbol_64 : tint_symbol,
  /* @offset(64) */
  tint_symbol_65 : vec2f,
  /* @offset(72) */
  tint_symbol_66 : vec2f,
}

struct tint_symbol_82_block {
  /* @offset(0) */
  inner : tint_symbol_63,
}

struct tint_symbol_67 {
  /* @offset(0) */
  tint_symbol_68 : vec4f,
  /* @offset(16) */
  tint_symbol_69 : vec4f,
  /* @offset(32) */
  tint_symbol_70 : vec4f,
  /* @offset(48) */
  tint_symbol_71 : vec4f,
}

alias Arr = array<tint_symbol_67, 6u>;

struct tint_symbol_72 {
  /* @offset(0) */
  tint_symbol_64 : tint_symbol,
  /* @offset(64) */
  tint_symbol_73 : vec4f,
  /* @offset(80) */
  tint_symbol_74 : Arr,
}

struct tint_symbol_83_block {
  /* @offset(0) */
  inner : tint_symbol_72,
}

struct tint_symbol_75 {
  /* @offset(0) */
  tint_symbol_76 : vec4f,
  /* @offset(16) */
  tint_symbol_77 : vec4f,
  /* @offset(32) */
  tint_symbol_78 : vec4f,
  /* @offset(48) */
  tint_symbol_79 : vec4f,
  /* @offset(64) */
  tint_symbol_80 : vec4f,
  /* @offset(80) */
  tint_symbol_81 : vec4u,
}

struct tint_symbol_85_block {
  /* @offset(0) */
  inner : tint_symbol_75,
}

struct tint_symbol_52 {
  /* @offset(0) */
  tint_symbol_23 : vec3f,
  /* @offset(12) */
  tint_symbol_53 : bool,
  /* @offset(16) */
  tint_symbol_54 : bool,
}

struct tint_symbol_105 {
  /* @offset(0) */
  tint_symbol_76 : vec4f,
  /* @offset(16) */
  tint_symbol_106 : vec3f,
}

var<private> tint_symbol_122_1 : vec3u;

var<private> tint_symbol_122_2 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_82 : tint_symbol_82_block;

@group(0) @binding(1) var<uniform> tint_symbol_83 : tint_symbol_83_block;

@group(0) @binding(2) var tint_symbol_84 : texture_storage_2d<rgba8unorm, write>;

@group(0) @binding(3) var<uniform> tint_symbol_85 : tint_symbol_85_block;

fn tint_ftoi(v : f32) -> i32 {
  return select(2147483647i, select(i32(v), i32(-2147483648), (v < -2147483648.0f)), (v < 2147483520.0f));
}

fn tint_symbol_17(tint_symbol_18 : tint_symbol, tint_symbol_19 : tint_symbol) -> tint_symbol {
  var tint_symbol_20 = tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  tint_symbol_20.tint_symbol_1 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_1) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_14));
  tint_symbol_20.tint_symbol_2 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_2) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_8));
  tint_symbol_20.tint_symbol_3 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_3) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_12));
  tint_symbol_20.tint_symbol_4 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_4) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_13));
  tint_symbol_20.tint_symbol_5 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_5) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_7)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_4));
  tint_symbol_20.tint_symbol_6 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_6) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_3));
  tint_symbol_20.tint_symbol_7 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_7) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_11)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_2));
  tint_symbol_20.tint_symbol_8 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_8) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_1)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_2));
  tint_symbol_20.tint_symbol_9 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_9) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_15)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_14));
  tint_symbol_20.tint_symbol_10 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_10) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_15)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_16)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_13));
  tint_symbol_20.tint_symbol_11 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_11) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_10)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_12));
  tint_symbol_20.tint_symbol_12 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_12) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_3));
  tint_symbol_20.tint_symbol_13 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_13) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_4));
  tint_symbol_20.tint_symbol_14 = ((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_14) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_8)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_13)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_2)) + (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_4)) + (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_1));
  tint_symbol_20.tint_symbol_15 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_15) - (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_9)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_12)) + (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_14)) + (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_16)) - (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_3)) - (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_5)) - (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_6)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_7)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_1)) - (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_8));
  tint_symbol_20.tint_symbol_16 = ((((((((((((((((tint_symbol_18.tint_symbol_1 * tint_symbol_19.tint_symbol_16) + (tint_symbol_18.tint_symbol_2 * tint_symbol_19.tint_symbol_7)) - (tint_symbol_18.tint_symbol_3 * tint_symbol_19.tint_symbol_6)) + (tint_symbol_18.tint_symbol_4 * tint_symbol_19.tint_symbol_5)) + (tint_symbol_18.tint_symbol_5 * tint_symbol_19.tint_symbol_4)) - (tint_symbol_18.tint_symbol_6 * tint_symbol_19.tint_symbol_3)) + (tint_symbol_18.tint_symbol_7 * tint_symbol_19.tint_symbol_2)) - (tint_symbol_18.tint_symbol_8 * tint_symbol_19.tint_symbol_15)) + (tint_symbol_18.tint_symbol_9 * tint_symbol_19.tint_symbol_14)) - (tint_symbol_18.tint_symbol_10 * tint_symbol_19.tint_symbol_13)) + (tint_symbol_18.tint_symbol_11 * tint_symbol_19.tint_symbol_12)) - (tint_symbol_18.tint_symbol_12 * tint_symbol_19.tint_symbol_11)) + (tint_symbol_18.tint_symbol_13 * tint_symbol_19.tint_symbol_10)) - (tint_symbol_18.tint_symbol_14 * tint_symbol_19.tint_symbol_9)) + (tint_symbol_18.tint_symbol_15 * tint_symbol_19.tint_symbol_8)) + (tint_symbol_18.tint_symbol_16 * tint_symbol_19.tint_symbol_1));
  let x_836 = tint_symbol_20;
  return x_836;
}

fn tint_symbol_21(tint_symbol_18_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_18_1.tint_symbol_1, -(tint_symbol_18_1.tint_symbol_2), -(tint_symbol_18_1.tint_symbol_3), -(tint_symbol_18_1.tint_symbol_4), -(tint_symbol_18_1.tint_symbol_5), -(tint_symbol_18_1.tint_symbol_6), -(tint_symbol_18_1.tint_symbol_7), -(tint_symbol_18_1.tint_symbol_8), -(tint_symbol_18_1.tint_symbol_9), -(tint_symbol_18_1.tint_symbol_10), -(tint_symbol_18_1.tint_symbol_11), tint_symbol_18_1.tint_symbol_12, tint_symbol_18_1.tint_symbol_13, tint_symbol_18_1.tint_symbol_14, tint_symbol_18_1.tint_symbol_15, tint_symbol_18_1.tint_symbol_16);
}

fn tint_symbol_22(tint_symbol_23 : tint_symbol, tint_symbol_24 : tint_symbol) -> tint_symbol {
  let x_872 = tint_symbol_21(tint_symbol_24);
  let x_873 = tint_symbol_17(tint_symbol_23, x_872);
  let x_874 = tint_symbol_17(tint_symbol_24, x_873);
  return x_874;
}

fn tint_symbol_25(tint_symbol_24_1 : tint_symbol) -> f32 {
  var tint_symbol_26 = 0.0f;
  tint_symbol_26 = 0.0f;
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_1 * tint_symbol_24_1.tint_symbol_1));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_2 * tint_symbol_24_1.tint_symbol_2));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_3 * tint_symbol_24_1.tint_symbol_3));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_4 * tint_symbol_24_1.tint_symbol_4));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_5 * tint_symbol_24_1.tint_symbol_5));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_6 * tint_symbol_24_1.tint_symbol_6));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_7 * tint_symbol_24_1.tint_symbol_7));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_8 * tint_symbol_24_1.tint_symbol_8));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_9 * tint_symbol_24_1.tint_symbol_9));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_10 * tint_symbol_24_1.tint_symbol_10));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_11 * tint_symbol_24_1.tint_symbol_11));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_12 * tint_symbol_24_1.tint_symbol_12));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_13 * tint_symbol_24_1.tint_symbol_13));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_14 * tint_symbol_24_1.tint_symbol_14));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_15 * tint_symbol_24_1.tint_symbol_15));
  tint_symbol_26 = (tint_symbol_26 + (tint_symbol_24_1.tint_symbol_16 * tint_symbol_24_1.tint_symbol_16));
  let x_963 = tint_symbol_26;
  return sqrt(x_963);
}

fn tint_symbol_27(tint_symbol_28 : vec3f) -> tint_symbol {
  return tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, (-(tint_symbol_28.x) / 2.0f), (-(tint_symbol_28.y) / 2.0f), (-(tint_symbol_28.z) / 2.0f), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_29(tint_symbol_24_2 : tint_symbol) -> tint_symbol {
  return tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, tint_symbol_24_2.tint_symbol_5, tint_symbol_24_2.tint_symbol_6, tint_symbol_24_2.tint_symbol_7, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_30(tint_symbol_28_1 : vec3f) -> tint_symbol {
  return tint_symbol(0.0f, tint_symbol_28_1.z, -(tint_symbol_28_1.y), tint_symbol_28_1.x, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_34(tint_symbol_24_3 : tint_symbol) -> tint_symbol {
  var tint_return_flag = false;
  var tint_return_value = tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  let x_1003 = tint_symbol_25(tint_symbol_24_3);
  if ((x_1003 == 0.0f)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  }
  if (!(tint_return_flag)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol((tint_symbol_24_3.tint_symbol_1 / x_1003), (tint_symbol_24_3.tint_symbol_2 / x_1003), (tint_symbol_24_3.tint_symbol_3 / x_1003), (tint_symbol_24_3.tint_symbol_4 / x_1003), (tint_symbol_24_3.tint_symbol_5 / x_1003), (tint_symbol_24_3.tint_symbol_6 / x_1003), (tint_symbol_24_3.tint_symbol_7 / x_1003), (tint_symbol_24_3.tint_symbol_8 / x_1003), (tint_symbol_24_3.tint_symbol_9 / x_1003), (tint_symbol_24_3.tint_symbol_10 / x_1003), (tint_symbol_24_3.tint_symbol_11 / x_1003), (tint_symbol_24_3.tint_symbol_12 / x_1003), (tint_symbol_24_3.tint_symbol_13 / x_1003), (tint_symbol_24_3.tint_symbol_14 / x_1003), (tint_symbol_24_3.tint_symbol_15 / x_1003), (tint_symbol_24_3.tint_symbol_16 / x_1003));
  }
  let x_1046 = tint_return_value;
  return x_1046;
}

fn tint_symbol_31(tint_symbol_1 : vec3f, tint_symbol_28_2 : vec3f) -> tint_symbol {
  let x_1052 = tint_symbol_30(tint_symbol_28_2);
  let x_1053 = tint_symbol_34(x_1052);
  return tint_symbol(0.0f, x_1053.tint_symbol_2, x_1053.tint_symbol_3, x_1053.tint_symbol_4, -(((-(x_1053.tint_symbol_3) * tint_symbol_1.z) - (x_1053.tint_symbol_2 * tint_symbol_1.y))), -(((x_1053.tint_symbol_2 * tint_symbol_1.x) - (x_1053.tint_symbol_4 * tint_symbol_1.z))), -(((x_1053.tint_symbol_4 * tint_symbol_1.y) + (x_1053.tint_symbol_3 * tint_symbol_1.x))), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_35(tint_symbol_36 : f32, tint_symbol_28_3 : vec3f, tint_symbol_37 : vec3f) -> tint_symbol {
  let x_1091 = sin((tint_symbol_36 / 2.0f));
  let x_1093 = tint_symbol_31(tint_symbol_37, tint_symbol_28_3);
  return tint_symbol(cos((tint_symbol_36 / 2.0f)), (x_1091 * x_1093.tint_symbol_2), (x_1091 * x_1093.tint_symbol_3), (x_1091 * x_1093.tint_symbol_4), (x_1091 * x_1093.tint_symbol_5), (x_1091 * x_1093.tint_symbol_6), (x_1091 * x_1093.tint_symbol_7), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_40(tint_symbol_24_4 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_24_4.tint_symbol_1, tint_symbol_24_4.tint_symbol_2, tint_symbol_24_4.tint_symbol_3, tint_symbol_24_4.tint_symbol_4, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_41(tint_symbol_23_1 : vec3f) -> tint_symbol {
  return tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, -(tint_symbol_23_1.z), tint_symbol_23_1.y, -(tint_symbol_23_1.x), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_42(tint_symbol_23_2 : tint_symbol) -> vec3f {
  return vec3f((-(tint_symbol_23_2.tint_symbol_11) / tint_symbol_23_2.tint_symbol_8), (tint_symbol_23_2.tint_symbol_10 / tint_symbol_23_2.tint_symbol_8), (-(tint_symbol_23_2.tint_symbol_9) / tint_symbol_23_2.tint_symbol_8));
}

fn tint_symbol_43(tint_symbol_32 : vec3f, tint_symbol_28_4 : f32) -> tint_symbol {
  return tint_symbol(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, tint_symbol_32.x, tint_symbol_32.y, tint_symbol_32.z, -(tint_symbol_28_4), 0.0f);
}

fn tint_symbol_44(tint_symbol_45 : vec3f, tint_symbol_46 : vec3f, tint_symbol_47 : vec3f) -> tint_symbol {
  let x_1257 = tint_symbol_43(vec3f(((((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z)) - ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z))) + ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z))), -(((((tint_symbol_46.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_46.z)) - ((tint_symbol_45.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_45.z))) + ((tint_symbol_45.x * tint_symbol_46.z) - (tint_symbol_46.x * tint_symbol_45.z)))), ((((tint_symbol_46.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_46.y)) - ((tint_symbol_45.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_45.y))) + ((tint_symbol_45.x * tint_symbol_46.y) - (tint_symbol_46.x * tint_symbol_45.y)))), (((tint_symbol_45.x * ((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z))) - (tint_symbol_46.x * ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z)))) + (tint_symbol_47.x * ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z)))));
  return x_1257;
}

fn tint_symbol_55(tint_symbol_39 : tint_symbol, tint_symbol_56 : tint_symbol) -> tint_symbol_52 {
  var tint_symbol_58 = tint_symbol_52(vec3f(), false, false);
  var x_1286 : bool;
  var x_1287 : bool;
  var x_1292 : bool;
  var x_1293 : bool;
  var x_1298 : bool;
  var x_1299 : bool;
  let x_1266 = tint_symbol_17(tint_symbol_39, tint_symbol_56);
  let x_1272 = tint_symbol_42(x_1266);
  tint_symbol_58.tint_symbol_23 = x_1272;
  tint_symbol_58.tint_symbol_53 = !((abs(x_1266.tint_symbol_8) <= 0.00000000999999993923f));
  let x_1281 = tint_symbol_58.tint_symbol_53;
  x_1287 = x_1281;
  if (x_1281) {
    x_1286 = (abs(x_1266.tint_symbol_9) <= 0.00000000999999993923f);
    x_1287 = x_1286;
  }
  x_1293 = x_1287;
  if (x_1287) {
    x_1292 = (abs(x_1266.tint_symbol_10) <= 0.00000000999999993923f);
    x_1293 = x_1292;
  }
  x_1299 = x_1293;
  if (x_1293) {
    x_1298 = (abs(x_1266.tint_symbol_11) <= 0.00000000999999993923f);
    x_1299 = x_1298;
  }
  tint_symbol_58.tint_symbol_54 = x_1299;
  let x_1300 = tint_symbol_58;
  return x_1300;
}

fn tint_symbol_60(tint_symbol_23_3 : vec3f, tint_symbol_24_5 : tint_symbol) -> vec3f {
  let x_1306 = tint_symbol_41(tint_symbol_23_3);
  let x_1307 = tint_symbol_22(x_1306, tint_symbol_24_5);
  let x_1308 = tint_symbol_42(x_1307);
  return x_1308;
}

fn tint_symbol_61(tint_symbol_28_5 : vec3f, tint_symbol_24_6 : tint_symbol) -> vec3f {
  let x_1313 = tint_symbol_40(tint_symbol_24_6);
  let x_1314 = tint_symbol_41(tint_symbol_28_5);
  let x_1315 = tint_symbol_22(x_1314, x_1313);
  let x_1316 = tint_symbol_42(x_1315);
  return x_1316;
}

fn tint_symbol_86(tint_symbol_1_1 : vec3f, tint_symbol_28_6 : vec3f, tint_symbol_87 : tint_symbol_67, tint_symbol_88 : f32) -> vec2f {
  var tint_return_flag_1 = false;
  var tint_return_value_1 = vec2f();
  var tint_symbol_58_1 = tint_symbol_52(vec3f(), false, false);
  var tint_symbol_89 = 0.0f;
  let x_1328 = tint_symbol_31(tint_symbol_1_1, tint_symbol_28_6);
  let x_1330 = tint_symbol_87.tint_symbol_68;
  let x_1332 = tint_symbol_87.tint_symbol_69;
  let x_1334 = tint_symbol_87.tint_symbol_70;
  let x_1329 = tint_symbol_44(x_1330.xyz, x_1332.xyz, x_1334.xyz);
  let x_1336 = tint_symbol_55(x_1328, x_1329);
  tint_symbol_58_1 = x_1336;
  if (tint_symbol_58_1.tint_symbol_53) {
    var x_1364 : bool;
    var x_1365 : bool;
    var x_1380 : bool;
    var x_1381 : bool;
    if ((abs((tint_symbol_87.tint_symbol_68.z - tint_symbol_87.tint_symbol_70.z)) <= 0.00000000999999993923f)) {
      let x_1357 = (tint_symbol_87.tint_symbol_68.x <= tint_symbol_58_1.tint_symbol_23.x);
      x_1365 = x_1357;
      if (x_1357) {
        x_1364 = (tint_symbol_58_1.tint_symbol_23.x <= tint_symbol_87.tint_symbol_70.x);
        x_1365 = x_1364;
      }
      var x_1379 : bool;
      x_1381 = x_1365;
      if (x_1365) {
        let x_1372 = (tint_symbol_87.tint_symbol_68.y <= tint_symbol_58_1.tint_symbol_23.y);
        x_1380 = x_1372;
        if (x_1372) {
          x_1379 = (tint_symbol_58_1.tint_symbol_23.y <= tint_symbol_87.tint_symbol_70.y);
          x_1380 = x_1379;
        }
        x_1381 = x_1380;
      }
      tint_symbol_58_1.tint_symbol_53 = x_1381;
    } else {
      var x_1404 : bool;
      var x_1405 : bool;
      var x_1420 : bool;
      var x_1421 : bool;
      if ((abs((tint_symbol_87.tint_symbol_68.y - tint_symbol_87.tint_symbol_70.y)) <= 0.00000000999999993923f)) {
        let x_1397 = (tint_symbol_87.tint_symbol_68.x <= tint_symbol_58_1.tint_symbol_23.x);
        x_1405 = x_1397;
        if (x_1397) {
          x_1404 = (tint_symbol_58_1.tint_symbol_23.x <= tint_symbol_87.tint_symbol_70.x);
          x_1405 = x_1404;
        }
        var x_1419 : bool;
        x_1421 = x_1405;
        if (x_1405) {
          let x_1412 = (tint_symbol_87.tint_symbol_68.z <= tint_symbol_58_1.tint_symbol_23.z);
          x_1420 = x_1412;
          if (x_1412) {
            x_1419 = (tint_symbol_58_1.tint_symbol_23.z <= tint_symbol_87.tint_symbol_70.z);
            x_1420 = x_1419;
          }
          x_1421 = x_1420;
        }
        tint_symbol_58_1.tint_symbol_53 = x_1421;
      } else {
        var x_1443 : bool;
        var x_1444 : bool;
        var x_1459 : bool;
        var x_1460 : bool;
        if ((abs((tint_symbol_87.tint_symbol_68.x - tint_symbol_87.tint_symbol_70.x)) <= 0.00000000999999993923f)) {
          let x_1436 = (tint_symbol_87.tint_symbol_68.y <= tint_symbol_58_1.tint_symbol_23.y);
          x_1444 = x_1436;
          if (x_1436) {
            x_1443 = (tint_symbol_58_1.tint_symbol_23.y <= tint_symbol_87.tint_symbol_70.y);
            x_1444 = x_1443;
          }
          var x_1458 : bool;
          x_1460 = x_1444;
          if (x_1444) {
            let x_1451 = (tint_symbol_87.tint_symbol_68.z <= tint_symbol_58_1.tint_symbol_23.z);
            x_1459 = x_1451;
            if (x_1451) {
              x_1458 = (tint_symbol_58_1.tint_symbol_23.z <= tint_symbol_87.tint_symbol_70.z);
              x_1459 = x_1458;
            }
            x_1460 = x_1459;
          }
          tint_symbol_58_1.tint_symbol_53 = x_1460;
        }
      }
    }
    if (tint_symbol_58_1.tint_symbol_53) {
      tint_symbol_89 = -1.0f;
      if ((tint_symbol_28_6.x > 0.00000000999999993923f)) {
        tint_symbol_89 = ((tint_symbol_58_1.tint_symbol_23.x - tint_symbol_1_1.x) / tint_symbol_28_6.x);
      } else {
        if ((tint_symbol_28_6.y > 0.00000000999999993923f)) {
          tint_symbol_89 = ((tint_symbol_58_1.tint_symbol_23.y - tint_symbol_1_1.y) / tint_symbol_28_6.y);
        } else {
          tint_symbol_89 = ((tint_symbol_58_1.tint_symbol_23.z - tint_symbol_1_1.z) / tint_symbol_28_6.z);
        }
      }
      if ((tint_symbol_89 < 0.0f)) {
        tint_return_flag_1 = true;
        tint_return_value_1 = vec2f(tint_symbol_88, -1.0f);
      } else {
        if ((tint_symbol_88 < 0.0f)) {
          tint_return_flag_1 = true;
          tint_return_value_1 = vec2f(tint_symbol_89, 1.0f);
        } else {
          if ((tint_symbol_89 < tint_symbol_88)) {
            tint_return_flag_1 = true;
            tint_return_value_1 = vec2f(tint_symbol_89, 1.0f);
          } else {
            tint_return_flag_1 = true;
            tint_return_value_1 = vec2f(tint_symbol_88, -1.0f);
          }
        }
      }
    }
  }
  if (!(tint_return_flag_1)) {
    tint_return_flag_1 = true;
    tint_return_value_1 = vec2f(tint_symbol_88, -1.0f);
  }
  let x_1520 = tint_return_value_1;
  return x_1520;
}

fn tint_symbol_90(tint_symbol_28_7 : vec3f) -> vec3f {
  var tint_symbol_91 = vec3f();
  let x_1528 = tint_symbol_82.inner.tint_symbol_64;
  let x_1525 = tint_symbol_61(tint_symbol_28_7, x_1528);
  tint_symbol_91 = x_1525;
  let x_1531 = tint_symbol_91;
  let x_1534 = tint_symbol_83.inner.tint_symbol_64;
  let x_1532 = tint_symbol_21(x_1534);
  let x_1535 = tint_symbol_61(x_1531, x_1532);
  tint_symbol_91 = x_1535;
  tint_symbol_91 = (tint_symbol_91 / tint_symbol_83.inner.tint_symbol_73.xyz);
  let x_1542 = tint_symbol_91;
  return x_1542;
}

fn tint_symbol_92(tint_symbol_93 : vec3f) -> vec3f {
  var tint_symbol_91_1 = vec3f();
  let x_1548 = tint_symbol_82.inner.tint_symbol_64;
  let x_1546 = tint_symbol_60(tint_symbol_93, x_1548);
  tint_symbol_91_1 = x_1546;
  let x_1550 = tint_symbol_91_1;
  let x_1553 = tint_symbol_83.inner.tint_symbol_64;
  let x_1551 = tint_symbol_21(x_1553);
  let x_1554 = tint_symbol_60(x_1550, x_1551);
  tint_symbol_91_1 = x_1554;
  tint_symbol_91_1 = (tint_symbol_91_1 / tint_symbol_83.inner.tint_symbol_73.xyz);
  let x_1560 = tint_symbol_91_1;
  return x_1560;
}

fn tint_symbol_94(tint_symbol_32_1 : vec3f) -> vec3f {
  var tint_symbol_91_2 = vec3f();
  tint_symbol_91_2 = (tint_symbol_32_1 * tint_symbol_83.inner.tint_symbol_73.xyz);
  let x_1570 = tint_symbol_91_2;
  let x_1572 = tint_symbol_83.inner.tint_symbol_64;
  let x_1569 = tint_symbol_61(x_1570, x_1572);
  tint_symbol_91_2 = x_1569;
  let x_1574 = tint_symbol_91_2;
  return normalize(x_1574);
}

fn tint_symbol_95(tint_symbol_93_1 : vec3f) -> vec3f {
  var tint_symbol_91_3 = vec3f();
  tint_symbol_91_3 = (tint_symbol_93_1 * tint_symbol_83.inner.tint_symbol_73.xyz);
  let x_1584 = tint_symbol_91_3;
  let x_1586 = tint_symbol_83.inner.tint_symbol_64;
  let x_1583 = tint_symbol_60(x_1584, x_1586);
  tint_symbol_91_3 = x_1583;
  let x_1587 = tint_symbol_91_3;
  return x_1587;
}

fn tint_symbol_96(tint_symbol_1_2 : vec3f, tint_symbol_28_8 : vec3f) -> vec2f {
  var tint_symbol_97 = 0.0f;
  var tint_symbol_98 = 0.0f;
  var tint_symbol_99 = 0i;
  tint_symbol_97 = -1.0f;
  tint_symbol_98 = -1.0f;
  tint_symbol_99 = 0i;
  loop {
    if (!((tint_symbol_99 < 6i))) {
      break;
    }
    let x_1611 = tint_symbol_83.inner.tint_symbol_74[tint_symbol_99];
    let x_1612 = tint_symbol_97;
    let x_1607 = tint_symbol_86(tint_symbol_1_2, tint_symbol_28_8, x_1611, x_1612);
    if ((x_1607.y > 0.0f)) {
      tint_symbol_97 = x_1607.x;
      tint_symbol_98 = f32(tint_symbol_99);
    }

    continuing {
      tint_symbol_99 = (tint_symbol_99 + 1i);
    }
  }
  let x_1622 = tint_symbol_97;
  let x_1623 = tint_symbol_98;
  return vec2f(x_1622, x_1623);
}

const x_1628 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);

fn tint_symbol_101() -> vec4f {
  return x_1628;
}

fn tint_symbol_102(tint_symbol_98_1 : i32) -> vec4f {
  var tint_symbol_103 = vec4f();
  switch(tint_symbol_98_1) {
    case 5i: {
      tint_symbol_103 = vec4f(0.65490198135375976562f, 0.65882354974746704102f, 0.6666666865348815918f, 1.0f);
    }
    case 4i: {
      tint_symbol_103 = vec4f(0.85098040103912353516f, 0.85098040103912353516f, 0.83921569585800170898f, 1.0f);
    }
    case 3i: {
      tint_symbol_103 = vec4f(0.34901961684226989746f, 0.79607844352722167969f, 0.90980392694473266602f, 1.0f);
    }
    case 2i: {
      tint_symbol_103 = vec4f(0.0f, 0.50980395078659057617f, 0.72941178083419799805f, 1.0f);
    }
    case 1i: {
      tint_symbol_103 = vec4f(1.0f, 0.63921570777893066406f, 0.0f, 1.0f);
    }
    case 0i: {
      tint_symbol_103 = vec4f(0.90980392694473266602f, 0.46666666865348815918f, 0.13333334028720855713f, 1.0f);
    }
    default: {
      tint_symbol_103 = x_1628;
    }
  }
  let x_1663 = tint_symbol_103;
  return x_1663;
}

const x_1679 = vec3f(0.0f, 0.0f, 1.0f);

fn tint_symbol_104(tint_symbol_98_2 : i32) -> vec3f {
  var tint_return_flag_2 = false;
  var tint_return_value_2 = vec3f();
  switch(tint_symbol_98_2) {
    case 5i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = vec3f(0.0f, 1.0f, 0.0f);
    }
    case 4i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = vec3f(0.0f, -1.0f, 0.0f);
    }
    case 3i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = vec3f(-1.0f, 0.0f, 0.0f);
    }
    case 2i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = vec3f(1.0f, 0.0f, 0.0f);
    }
    case 1i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_1679;
    }
    case 0i: {
      tint_return_flag_2 = true;
      tint_return_value_2 = vec3f(0.0f, 0.0f, -1.0f);
    }
    default: {
      tint_return_flag_2 = true;
      tint_return_value_2 = vec3f();
    }
  }
  let x_1684 = tint_return_value_2;
  return x_1684;
}

fn tint_symbol_107(tint_symbol_108 : vec3f, tint_symbol_109 : vec3f, tint_symbol_110 : vec3f, tint_symbol_111 : vec3f) -> tint_symbol_105 {
  var tint_return_flag_3 = false;
  var tint_return_value_3 = tint_symbol_105(vec4f(), vec3f());
  var tint_symbol_76 = vec4f();
  var tint_symbol_112 = 0.0f;
  var x_1727 = vec4f();
  var tint_symbol_114 = vec3f();
  var tint_symbol_91_4 = tint_symbol_105(vec4f(), vec3f());
  var tint_symbol_76_1 = vec4f();
  var tint_symbol_114_1 = vec3f();
  var tint_symbol_91_5 = tint_symbol_105(vec4f(), vec3f());
  var tint_symbol_76_2 = vec4f();
  var tint_symbol_112_1 = 0.0f;
  var x_1785 = vec4f();
  var tint_symbol_114_2 = vec3f();
  var tint_symbol_91_6 = tint_symbol_105(vec4f(), vec3f());
  let x_1700 = tint_symbol_85.inner.tint_symbol_81.y;
  switch(x_1700) {
    case 2u: {
      let x_1760 = tint_symbol_85.inner.tint_symbol_80[0i];
      let x_1762 = tint_symbol_85.inner.tint_symbol_80.y;
      tint_symbol_76_2 = tint_symbol_85.inner.tint_symbol_76;
      tint_symbol_112_1 = length((tint_symbol_110 - tint_symbol_108));
      tint_symbol_76_2 = (tint_symbol_76_2 / vec4f(((tint_symbol_85.inner.tint_symbol_79[0i] + (tint_symbol_112_1 * tint_symbol_85.inner.tint_symbol_79.y)) + ((tint_symbol_112_1 * tint_symbol_112_1) * tint_symbol_85.inner.tint_symbol_79.z))));
      tint_symbol_114_2 = normalize((tint_symbol_110 - tint_symbol_108));
      let x_1791 = dot(normalize(tint_symbol_109), tint_symbol_114_2);
      if ((x_1791 >= cos(x_1760))) {
        tint_symbol_76_2 = (tint_symbol_76_2 * pow(x_1791, x_1762));
        tint_symbol_91_6.tint_symbol_76 = (tint_symbol_76_2 * max(dot(tint_symbol_114_2, -(tint_symbol_111)), 0.0f));
        tint_symbol_91_6.tint_symbol_106 = tint_symbol_114_2;
      }
      tint_return_flag_3 = true;
      tint_return_value_3 = tint_symbol_91_6;
    }
    case 1u: {
      tint_symbol_76_1 = tint_symbol_85.inner.tint_symbol_76;
      tint_symbol_114_1 = normalize(tint_symbol_109);
      tint_symbol_91_5.tint_symbol_76 = (tint_symbol_76_1 * max(dot(tint_symbol_114_1, -(tint_symbol_111)), 0.0f));
      tint_symbol_91_5.tint_symbol_106 = tint_symbol_114_1;
      tint_return_flag_3 = true;
      tint_return_value_3 = tint_symbol_91_5;
    }
    case 0u, default: {
      tint_symbol_76 = tint_symbol_85.inner.tint_symbol_76;
      tint_symbol_112 = length((tint_symbol_110 - tint_symbol_108));
      tint_symbol_76 = (tint_symbol_76 / vec4f(((tint_symbol_85.inner.tint_symbol_79[0i] + (tint_symbol_112 * tint_symbol_85.inner.tint_symbol_79.y)) + ((tint_symbol_112 * tint_symbol_112) * tint_symbol_85.inner.tint_symbol_79.z))));
      tint_symbol_114 = normalize((tint_symbol_110 - tint_symbol_108));
      tint_symbol_91_4.tint_symbol_76 = (tint_symbol_76 * max(dot(tint_symbol_114, -(tint_symbol_111)), 0.0f));
      tint_symbol_91_4.tint_symbol_106 = tint_symbol_114;
      tint_return_flag_3 = true;
      tint_return_value_3 = tint_symbol_91_4;
    }
  }
  let x_1811 = tint_return_value_3;
  return x_1811;
}

fn tint_symbol_117(tint_symbol_103_1 : vec4f, tint_symbol_118 : f32) -> vec4f {
  var x_1820 = vec4f();
  let x_1817 = (1.0f / tint_symbol_118);
  return (round((tint_symbol_103_1 / vec4f(x_1817))) * x_1817);
}

const x_1846 = vec2f(2.0f);

const x_1878 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);

const x_1944 = vec4f(1.0f);

const x_1958 = vec4f(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f, 1.0f);

fn tint_symbol_121_inner(tint_symbol_122 : vec3u) {
  var tint_symbol_37_1 = vec3f();
  var tint_symbol_126 = vec3f();
  var tint_symbol_58_2 = vec2f();
  var tint_symbol_103_2 = vec4f();
  var tint_symbol_128 = vec4f();
  var tint_symbol_129 = vec3f();
  var tint_symbol_130 = vec3f();
  var tint_symbol_131 = tint_symbol_105(vec4f(), vec3f());
  var tint_symbol_133 = vec4f();
  var x_1842 : bool;
  var x_1843 : bool;
  let x_1828 = bitcast<vec2i>(tint_symbol_122.xy);
  let x_1832 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_84)));
  let x_1837 = (x_1828.x < x_1832.x);
  x_1843 = x_1837;
  if (x_1837) {
    x_1842 = (x_1828.y < x_1832.y);
    x_1843 = x_1842;
  }
  if (x_1843) {
    var x_1936 : bool;
    var x_1937 : bool;
    let x_1851 = (x_1846 / tint_symbol_82.inner.tint_symbol_66.xy);
    tint_symbol_37_1 = vec3f((((f32(x_1828.x) + 0.5f) * x_1851.x) - 1.0f), (((f32(x_1828.y) + 0.5f) * x_1851.y) - 1.0f), 0.0f);
    tint_symbol_126 = x_1679;
    let x_1869 = tint_symbol_37_1;
    let x_1868 = tint_symbol_92(x_1869);
    tint_symbol_37_1 = x_1868;
    let x_1871 = tint_symbol_126;
    let x_1870 = tint_symbol_90(x_1871);
    tint_symbol_126 = x_1870;
    let x_1873 = tint_symbol_37_1;
    let x_1874 = tint_symbol_126;
    let x_1872 = tint_symbol_96(x_1873, x_1874);
    tint_symbol_58_2 = x_1872;
    tint_symbol_103_2 = x_1878;
    if ((tint_symbol_58_2.x > 0.0f)) {
      let x_1885 = tint_symbol_101();
      let x_1889 = tint_symbol_58_2.y;
      let x_1887 = tint_ftoi(x_1889);
      let x_1886 = tint_symbol_102(x_1887);
      tint_symbol_128 = x_1886;
      let x_1894 = tint_symbol_58_2.y;
      let x_1892 = tint_ftoi(x_1894);
      let x_1891 = tint_symbol_104(x_1892);
      tint_symbol_129 = x_1891;
      let x_1897 = tint_symbol_129;
      let x_1896 = tint_symbol_94(x_1897);
      tint_symbol_129 = x_1896;
      let x_1899 = tint_symbol_85.inner.tint_symbol_77;
      let x_1902 = tint_symbol_85.inner.tint_symbol_78;
      tint_symbol_130 = (tint_symbol_37_1 + (tint_symbol_126 * tint_symbol_58_2.x));
      let x_1912 = tint_symbol_130;
      let x_1911 = tint_symbol_95(x_1912);
      tint_symbol_130 = x_1911;
      let x_1914 = tint_symbol_130;
      let x_1915 = tint_symbol_129;
      let x_1913 = tint_symbol_107(x_1899.xyz, x_1902.xyz, x_1914, x_1915);
      tint_symbol_131 = x_1913;
      tint_symbol_128 = (tint_symbol_128 * tint_symbol_131.tint_symbol_76);
      if ((tint_symbol_85.inner.tint_symbol_81[0i] == 0u)) {
        tint_symbol_103_2 = (x_1885 + tint_symbol_128);
      }
      let x_1931 = (tint_symbol_85.inner.tint_symbol_81[0i] == 1u);
      x_1937 = x_1931;
      if (x_1931) {
      } else {
        x_1936 = (tint_symbol_85.inner.tint_symbol_81[0i] == 2u);
        x_1937 = x_1936;
      }
      if (x_1937) {
        tint_symbol_133 = ((x_1944 * tint_symbol_131.tint_symbol_76) * pow(dot(tint_symbol_126, -(reflect(tint_symbol_131.tint_symbol_106, tint_symbol_129))), 100.0f));
        tint_symbol_133 = clamp(tint_symbol_133, vec4f(), x_1944);
        tint_symbol_103_2 = (((x_1885 + tint_symbol_128) + tint_symbol_133) + (x_1958 * tint_symbol_131.tint_symbol_76));
        if ((tint_symbol_85.inner.tint_symbol_81[0i] == 2u)) {
          let x_1973 = tint_symbol_103_2;
          let x_1972 = tint_symbol_117(x_1973, 5.0f);
          tint_symbol_103_2 = x_1972;
        }
      }
    }
    let x_1977 = tint_symbol_103_2;
    textureStore(tint_symbol_84, x_1828, x_1977);
  }
  return;
}

fn tint_symbol_121_1() {
  let x_1982 = tint_symbol_122_1;
  tint_symbol_121_inner(x_1982);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_122_1_param : vec3u) {
  tint_symbol_122_1 = tint_symbol_122_1_param;
  tint_symbol_121_1();
}

fn tint_symbol_135_inner(tint_symbol_122_3 : vec3u) {
  var tint_symbol_37_2 = vec3f();
  var tint_symbol_126_1 = vec3f();
  var tint_symbol_58_3 = vec2f();
  var tint_symbol_103_3 = vec4f();
  var tint_symbol_128_1 = vec4f();
  var tint_symbol_129_1 = vec3f();
  var tint_symbol_130_1 = vec3f();
  var tint_symbol_131_1 = tint_symbol_105(vec4f(), vec3f());
  var tint_symbol_133_1 = vec4f();
  var x_1998 : bool;
  var x_1999 : bool;
  let x_1986 = bitcast<vec2i>(tint_symbol_122_3.xy);
  let x_1988 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_84)));
  let x_1993 = (x_1986.x < x_1988.x);
  x_1999 = x_1993;
  if (x_1993) {
    x_1998 = (x_1986.y < x_1988.y);
    x_1999 = x_1998;
  }
  if (x_1999) {
    var x_2094 : bool;
    var x_2095 : bool;
    let x_2009 = ((x_1846 / tint_symbol_82.inner.tint_symbol_66.xy) * tint_symbol_82.inner.tint_symbol_65.xy);
    tint_symbol_37_2 = vec3f();
    tint_symbol_126_1 = normalize(vec3f((((f32(x_1986.x) + 0.5f) * x_2009.x) - tint_symbol_82.inner.tint_symbol_65.x), (((f32(x_1986.y) + 0.5f) * x_2009.y) - tint_symbol_82.inner.tint_symbol_65.y), 1.0f));
    let x_2031 = tint_symbol_37_2;
    let x_2030 = tint_symbol_92(x_2031);
    tint_symbol_37_2 = x_2030;
    let x_2033 = tint_symbol_126_1;
    let x_2032 = tint_symbol_90(x_2033);
    tint_symbol_126_1 = x_2032;
    let x_2035 = tint_symbol_37_2;
    let x_2036 = tint_symbol_126_1;
    let x_2034 = tint_symbol_96(x_2035, x_2036);
    tint_symbol_58_3 = x_2034;
    tint_symbol_103_3 = x_1878;
    if ((tint_symbol_58_3.x > 0.0f)) {
      let x_2044 = tint_symbol_101();
      let x_2048 = tint_symbol_58_3.y;
      let x_2046 = tint_ftoi(x_2048);
      let x_2045 = tint_symbol_102(x_2046);
      tint_symbol_128_1 = x_2045;
      let x_2053 = tint_symbol_58_3.y;
      let x_2051 = tint_ftoi(x_2053);
      let x_2050 = tint_symbol_104(x_2051);
      tint_symbol_129_1 = x_2050;
      let x_2056 = tint_symbol_129_1;
      let x_2055 = tint_symbol_94(x_2056);
      tint_symbol_129_1 = x_2055;
      let x_2058 = tint_symbol_85.inner.tint_symbol_77;
      let x_2061 = tint_symbol_85.inner.tint_symbol_78;
      tint_symbol_130_1 = (tint_symbol_37_2 + (tint_symbol_126_1 * tint_symbol_58_3.x));
      let x_2071 = tint_symbol_130_1;
      let x_2070 = tint_symbol_95(x_2071);
      tint_symbol_130_1 = x_2070;
      let x_2073 = tint_symbol_130_1;
      let x_2074 = tint_symbol_129_1;
      let x_2072 = tint_symbol_107(x_2058.xyz, x_2061.xyz, x_2073, x_2074);
      tint_symbol_131_1 = x_2072;
      tint_symbol_128_1 = (tint_symbol_128_1 * tint_symbol_131_1.tint_symbol_76);
      if ((tint_symbol_85.inner.tint_symbol_81[0i] == 0u)) {
        tint_symbol_103_3 = (x_2044 + tint_symbol_128_1);
      }
      let x_2089 = (tint_symbol_85.inner.tint_symbol_81[0i] == 1u);
      x_2095 = x_2089;
      if (x_2089) {
      } else {
        x_2094 = (tint_symbol_85.inner.tint_symbol_81[0i] == 2u);
        x_2095 = x_2094;
      }
      if (x_2095) {
        tint_symbol_133_1 = ((x_1944 * tint_symbol_131_1.tint_symbol_76) * pow(dot(tint_symbol_126_1, -(reflect(tint_symbol_131_1.tint_symbol_106, tint_symbol_129_1))), 100.0f));
        tint_symbol_133_1 = clamp(tint_symbol_133_1, vec4f(), x_1944);
        tint_symbol_103_3 = (((x_2044 + tint_symbol_128_1) + tint_symbol_133_1) + (x_1958 * tint_symbol_131_1.tint_symbol_76));
        if ((tint_symbol_85.inner.tint_symbol_81[0i] == 2u)) {
          let x_2127 = tint_symbol_103_3;
          let x_2126 = tint_symbol_117(x_2127, 5.0f);
          tint_symbol_103_3 = x_2126;
        }
      }
    }
    let x_2130 = tint_symbol_103_3;
    textureStore(tint_symbol_84, x_1986, x_2130);
  }
  return;
}

fn tint_symbol_135_1() {
  let x_2134 = tint_symbol_122_2;
  tint_symbol_135_inner(x_2134);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_122_2_param : vec3u) {
  tint_symbol_122_2 = tint_symbol_122_2_param;
  tint_symbol_135_1();
}
