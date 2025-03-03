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

struct tint_symbol_75_block {
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

struct tint_symbol_76_block {
  /* @offset(0) */
  inner : tint_symbol_72,
}

struct tint_symbol_52 {
  /* @offset(0) */
  tint_symbol_23 : vec3f,
  /* @offset(12) */
  tint_symbol_53 : bool,
  /* @offset(16) */
  tint_symbol_54 : bool,
}

var<private> tint_symbol_96_1 : vec3u;

var<private> tint_symbol_96_2 : vec3u;

var<private> tint_symbol_96_3 : vec3u;

var<private> tint_symbol_96_4 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_75 : tint_symbol_75_block;

@group(0) @binding(1) var<uniform> tint_symbol_76 : tint_symbol_76_block;

@group(0) @binding(2) var tint_symbol_77 : texture_storage_2d<rgba8unorm, write>;

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
  let x_833 = tint_symbol_20;
  return x_833;
}

fn tint_symbol_21(tint_symbol_18_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_18_1.tint_symbol_1, -(tint_symbol_18_1.tint_symbol_2), -(tint_symbol_18_1.tint_symbol_3), -(tint_symbol_18_1.tint_symbol_4), -(tint_symbol_18_1.tint_symbol_5), -(tint_symbol_18_1.tint_symbol_6), -(tint_symbol_18_1.tint_symbol_7), -(tint_symbol_18_1.tint_symbol_8), -(tint_symbol_18_1.tint_symbol_9), -(tint_symbol_18_1.tint_symbol_10), -(tint_symbol_18_1.tint_symbol_11), tint_symbol_18_1.tint_symbol_12, tint_symbol_18_1.tint_symbol_13, tint_symbol_18_1.tint_symbol_14, tint_symbol_18_1.tint_symbol_15, tint_symbol_18_1.tint_symbol_16);
}

fn tint_symbol_22(tint_symbol_23 : tint_symbol, tint_symbol_24 : tint_symbol) -> tint_symbol {
  let x_869 = tint_symbol_21(tint_symbol_24);
  let x_870 = tint_symbol_17(tint_symbol_23, x_869);
  let x_871 = tint_symbol_17(tint_symbol_24, x_870);
  return x_871;
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
  let x_960 = tint_symbol_26;
  return sqrt(x_960);
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
  let x_1000 = tint_symbol_25(tint_symbol_24_3);
  if ((x_1000 == 0.0f)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  }
  if (!(tint_return_flag)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol((tint_symbol_24_3.tint_symbol_1 / x_1000), (tint_symbol_24_3.tint_symbol_2 / x_1000), (tint_symbol_24_3.tint_symbol_3 / x_1000), (tint_symbol_24_3.tint_symbol_4 / x_1000), (tint_symbol_24_3.tint_symbol_5 / x_1000), (tint_symbol_24_3.tint_symbol_6 / x_1000), (tint_symbol_24_3.tint_symbol_7 / x_1000), (tint_symbol_24_3.tint_symbol_8 / x_1000), (tint_symbol_24_3.tint_symbol_9 / x_1000), (tint_symbol_24_3.tint_symbol_10 / x_1000), (tint_symbol_24_3.tint_symbol_11 / x_1000), (tint_symbol_24_3.tint_symbol_12 / x_1000), (tint_symbol_24_3.tint_symbol_13 / x_1000), (tint_symbol_24_3.tint_symbol_14 / x_1000), (tint_symbol_24_3.tint_symbol_15 / x_1000), (tint_symbol_24_3.tint_symbol_16 / x_1000));
  }
  let x_1043 = tint_return_value;
  return x_1043;
}

fn tint_symbol_31(tint_symbol_1 : vec3f, tint_symbol_28_2 : vec3f) -> tint_symbol {
  let x_1049 = tint_symbol_30(tint_symbol_28_2);
  let x_1050 = tint_symbol_34(x_1049);
  return tint_symbol(0.0f, x_1050.tint_symbol_2, x_1050.tint_symbol_3, x_1050.tint_symbol_4, -(((-(x_1050.tint_symbol_3) * tint_symbol_1.z) - (x_1050.tint_symbol_2 * tint_symbol_1.y))), -(((x_1050.tint_symbol_2 * tint_symbol_1.x) - (x_1050.tint_symbol_4 * tint_symbol_1.z))), -(((x_1050.tint_symbol_4 * tint_symbol_1.y) + (x_1050.tint_symbol_3 * tint_symbol_1.x))), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_35(tint_symbol_36 : f32, tint_symbol_28_3 : vec3f, tint_symbol_37 : vec3f) -> tint_symbol {
  let x_1088 = sin((tint_symbol_36 / 2.0f));
  let x_1090 = tint_symbol_31(tint_symbol_37, tint_symbol_28_3);
  return tint_symbol(cos((tint_symbol_36 / 2.0f)), (x_1088 * x_1090.tint_symbol_2), (x_1088 * x_1090.tint_symbol_3), (x_1088 * x_1090.tint_symbol_4), (x_1088 * x_1090.tint_symbol_5), (x_1088 * x_1090.tint_symbol_6), (x_1088 * x_1090.tint_symbol_7), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
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
  let x_1254 = tint_symbol_43(vec3f(((((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z)) - ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z))) + ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z))), -(((((tint_symbol_46.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_46.z)) - ((tint_symbol_45.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_45.z))) + ((tint_symbol_45.x * tint_symbol_46.z) - (tint_symbol_46.x * tint_symbol_45.z)))), ((((tint_symbol_46.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_46.y)) - ((tint_symbol_45.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_45.y))) + ((tint_symbol_45.x * tint_symbol_46.y) - (tint_symbol_46.x * tint_symbol_45.y)))), (((tint_symbol_45.x * ((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z))) - (tint_symbol_46.x * ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z)))) + (tint_symbol_47.x * ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z)))));
  return x_1254;
}

fn tint_symbol_55(tint_symbol_39 : tint_symbol, tint_symbol_56 : tint_symbol) -> tint_symbol_52 {
  var tint_symbol_58 = tint_symbol_52(vec3f(), false, false);
  var x_1283 : bool;
  var x_1284 : bool;
  var x_1289 : bool;
  var x_1290 : bool;
  var x_1295 : bool;
  var x_1296 : bool;
  let x_1263 = tint_symbol_17(tint_symbol_39, tint_symbol_56);
  let x_1269 = tint_symbol_42(x_1263);
  tint_symbol_58.tint_symbol_23 = x_1269;
  tint_symbol_58.tint_symbol_53 = !((abs(x_1263.tint_symbol_8) <= 0.00000000999999993923f));
  let x_1278 = tint_symbol_58.tint_symbol_53;
  x_1284 = x_1278;
  if (x_1278) {
    x_1283 = (abs(x_1263.tint_symbol_9) <= 0.00000000999999993923f);
    x_1284 = x_1283;
  }
  x_1290 = x_1284;
  if (x_1284) {
    x_1289 = (abs(x_1263.tint_symbol_10) <= 0.00000000999999993923f);
    x_1290 = x_1289;
  }
  x_1296 = x_1290;
  if (x_1290) {
    x_1295 = (abs(x_1263.tint_symbol_11) <= 0.00000000999999993923f);
    x_1296 = x_1295;
  }
  tint_symbol_58.tint_symbol_54 = x_1296;
  let x_1297 = tint_symbol_58;
  return x_1297;
}

fn tint_symbol_60(tint_symbol_23_3 : vec3f, tint_symbol_24_5 : tint_symbol) -> vec3f {
  let x_1303 = tint_symbol_41(tint_symbol_23_3);
  let x_1304 = tint_symbol_22(x_1303, tint_symbol_24_5);
  let x_1305 = tint_symbol_42(x_1304);
  return x_1305;
}

fn tint_symbol_61(tint_symbol_28_5 : vec3f, tint_symbol_24_6 : tint_symbol) -> vec3f {
  let x_1310 = tint_symbol_40(tint_symbol_24_6);
  let x_1311 = tint_symbol_41(tint_symbol_28_5);
  let x_1312 = tint_symbol_22(x_1311, x_1310);
  let x_1313 = tint_symbol_42(x_1312);
  return x_1313;
}

fn tint_symbol_78(tint_symbol_1_1 : vec3f, tint_symbol_28_6 : vec3f, tint_symbol_79 : tint_symbol_67, tint_symbol_80 : f32) -> vec2f {
  var tint_return_flag_1 = false;
  var tint_return_value_1 = vec2f();
  var tint_symbol_58_1 = tint_symbol_52(vec3f(), false, false);
  var tint_symbol_81 = 0.0f;
  let x_1325 = tint_symbol_31(tint_symbol_1_1, tint_symbol_28_6);
  let x_1327 = tint_symbol_79.tint_symbol_68;
  let x_1329 = tint_symbol_79.tint_symbol_69;
  let x_1331 = tint_symbol_79.tint_symbol_70;
  let x_1326 = tint_symbol_44(x_1327.xyz, x_1329.xyz, x_1331.xyz);
  let x_1333 = tint_symbol_55(x_1325, x_1326);
  tint_symbol_58_1 = x_1333;
  if (tint_symbol_58_1.tint_symbol_53) {
    var x_1361 : bool;
    var x_1362 : bool;
    var x_1377 : bool;
    var x_1378 : bool;
    if ((abs((tint_symbol_79.tint_symbol_68.z - tint_symbol_79.tint_symbol_70.z)) <= 0.00000000999999993923f)) {
      let x_1354 = (tint_symbol_79.tint_symbol_68.x <= tint_symbol_58_1.tint_symbol_23.x);
      x_1362 = x_1354;
      if (x_1354) {
        x_1361 = (tint_symbol_58_1.tint_symbol_23.x <= tint_symbol_79.tint_symbol_70.x);
        x_1362 = x_1361;
      }
      var x_1376 : bool;
      x_1378 = x_1362;
      if (x_1362) {
        let x_1369 = (tint_symbol_79.tint_symbol_68.y <= tint_symbol_58_1.tint_symbol_23.y);
        x_1377 = x_1369;
        if (x_1369) {
          x_1376 = (tint_symbol_58_1.tint_symbol_23.y <= tint_symbol_79.tint_symbol_70.y);
          x_1377 = x_1376;
        }
        x_1378 = x_1377;
      }
      tint_symbol_58_1.tint_symbol_53 = x_1378;
    } else {
      var x_1401 : bool;
      var x_1402 : bool;
      var x_1417 : bool;
      var x_1418 : bool;
      if ((abs((tint_symbol_79.tint_symbol_68.y - tint_symbol_79.tint_symbol_70.y)) <= 0.00000000999999993923f)) {
        let x_1394 = (tint_symbol_79.tint_symbol_68.x <= tint_symbol_58_1.tint_symbol_23.x);
        x_1402 = x_1394;
        if (x_1394) {
          x_1401 = (tint_symbol_58_1.tint_symbol_23.x <= tint_symbol_79.tint_symbol_70.x);
          x_1402 = x_1401;
        }
        var x_1416 : bool;
        x_1418 = x_1402;
        if (x_1402) {
          let x_1409 = (tint_symbol_79.tint_symbol_68.z <= tint_symbol_58_1.tint_symbol_23.z);
          x_1417 = x_1409;
          if (x_1409) {
            x_1416 = (tint_symbol_58_1.tint_symbol_23.z <= tint_symbol_79.tint_symbol_70.z);
            x_1417 = x_1416;
          }
          x_1418 = x_1417;
        }
        tint_symbol_58_1.tint_symbol_53 = x_1418;
      } else {
        var x_1440 : bool;
        var x_1441 : bool;
        var x_1456 : bool;
        var x_1457 : bool;
        if ((abs((tint_symbol_79.tint_symbol_68.x - tint_symbol_79.tint_symbol_70.x)) <= 0.00000000999999993923f)) {
          let x_1433 = (tint_symbol_79.tint_symbol_68.y <= tint_symbol_58_1.tint_symbol_23.y);
          x_1441 = x_1433;
          if (x_1433) {
            x_1440 = (tint_symbol_58_1.tint_symbol_23.y <= tint_symbol_79.tint_symbol_70.y);
            x_1441 = x_1440;
          }
          var x_1455 : bool;
          x_1457 = x_1441;
          if (x_1441) {
            let x_1448 = (tint_symbol_79.tint_symbol_68.z <= tint_symbol_58_1.tint_symbol_23.z);
            x_1456 = x_1448;
            if (x_1448) {
              x_1455 = (tint_symbol_58_1.tint_symbol_23.z <= tint_symbol_79.tint_symbol_70.z);
              x_1456 = x_1455;
            }
            x_1457 = x_1456;
          }
          tint_symbol_58_1.tint_symbol_53 = x_1457;
        }
      }
    }
    if (tint_symbol_58_1.tint_symbol_53) {
      tint_symbol_81 = -1.0f;
      if ((tint_symbol_28_6.x > 0.00000000999999993923f)) {
        tint_symbol_81 = ((tint_symbol_58_1.tint_symbol_23.x - tint_symbol_1_1.x) / tint_symbol_28_6.x);
      } else {
        if ((tint_symbol_28_6.y > 0.00000000999999993923f)) {
          tint_symbol_81 = ((tint_symbol_58_1.tint_symbol_23.y - tint_symbol_1_1.y) / tint_symbol_28_6.y);
        } else {
          tint_symbol_81 = ((tint_symbol_58_1.tint_symbol_23.z - tint_symbol_1_1.z) / tint_symbol_28_6.z);
        }
      }
      if ((tint_symbol_81 < 0.0f)) {
        tint_return_flag_1 = true;
        tint_return_value_1 = vec2f(tint_symbol_80, -1.0f);
      } else {
        if ((tint_symbol_80 < 0.0f)) {
          tint_return_flag_1 = true;
          tint_return_value_1 = vec2f(tint_symbol_81, 1.0f);
        } else {
          if ((tint_symbol_81 < tint_symbol_80)) {
            tint_return_flag_1 = true;
            tint_return_value_1 = vec2f(tint_symbol_81, 1.0f);
          } else {
            tint_return_flag_1 = true;
            tint_return_value_1 = vec2f(tint_symbol_80, -1.0f);
          }
        }
      }
    }
  }
  if (!(tint_return_flag_1)) {
    tint_return_flag_1 = true;
    tint_return_value_1 = vec2f(tint_symbol_80, -1.0f);
  }
  let x_1517 = tint_return_value_1;
  return x_1517;
}

fn tint_symbol_82(tint_symbol_28_7 : vec3f) -> vec3f {
  var tint_symbol_83 = vec3f();
  let x_1525 = tint_symbol_75.inner.tint_symbol_64;
  let x_1522 = tint_symbol_61(tint_symbol_28_7, x_1525);
  tint_symbol_83 = x_1522;
  let x_1528 = tint_symbol_83;
  let x_1531 = tint_symbol_76.inner.tint_symbol_64;
  let x_1529 = tint_symbol_21(x_1531);
  let x_1532 = tint_symbol_61(x_1528, x_1529);
  tint_symbol_83 = x_1532;
  tint_symbol_83 = (tint_symbol_83 / tint_symbol_76.inner.tint_symbol_73.xyz);
  let x_1539 = tint_symbol_83;
  return x_1539;
}

fn tint_symbol_84(tint_symbol_85 : vec3f) -> vec3f {
  var tint_symbol_83_1 = vec3f();
  let x_1545 = tint_symbol_75.inner.tint_symbol_64;
  let x_1543 = tint_symbol_60(tint_symbol_85, x_1545);
  tint_symbol_83_1 = x_1543;
  let x_1547 = tint_symbol_83_1;
  let x_1550 = tint_symbol_76.inner.tint_symbol_64;
  let x_1548 = tint_symbol_21(x_1550);
  let x_1551 = tint_symbol_60(x_1547, x_1548);
  tint_symbol_83_1 = x_1551;
  tint_symbol_83_1 = (tint_symbol_83_1 / tint_symbol_76.inner.tint_symbol_73.xyz);
  let x_1557 = tint_symbol_83_1;
  return x_1557;
}

fn tint_symbol_86(tint_symbol_1_2 : vec3f, tint_symbol_28_8 : vec3f) -> vec2f {
  var tint_symbol_87 = 0.0f;
  var tint_symbol_88 = 0.0f;
  var tint_symbol_89 = 0i;
  tint_symbol_87 = -1.0f;
  tint_symbol_88 = -1.0f;
  tint_symbol_89 = 0i;
  loop {
    if (!((tint_symbol_89 < 6i))) {
      break;
    }
    let x_1581 = tint_symbol_76.inner.tint_symbol_74[tint_symbol_89];
    let x_1582 = tint_symbol_87;
    let x_1577 = tint_symbol_78(tint_symbol_1_2, tint_symbol_28_8, x_1581, x_1582);
    if ((x_1577.y > 0.0f)) {
      tint_symbol_87 = x_1577.x;
      tint_symbol_88 = f32(tint_symbol_89);
    }

    continuing {
      tint_symbol_89 = (tint_symbol_89 + 1i);
    }
  }
  let x_1592 = tint_symbol_87;
  let x_1593 = tint_symbol_88;
  return vec2f(x_1592, x_1593);
}

const x_1637 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);

const x_1640 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);

fn tint_symbol_91(tint_symbol_92 : vec2i, tint_symbol_87_1 : f32, tint_symbol_88_1 : i32) {
  var tint_symbol_93 = vec4f();
  if ((tint_symbol_87_1 > 0.0f)) {
    switch(tint_symbol_88_1) {
      case 5i: {
        tint_symbol_93 = vec4f(0.65490198135375976562f, 0.65882354974746704102f, 0.6666666865348815918f, 1.0f);
      }
      case 4i: {
        tint_symbol_93 = vec4f(0.85098040103912353516f, 0.85098040103912353516f, 0.83921569585800170898f, 1.0f);
      }
      case 3i: {
        tint_symbol_93 = vec4f(0.34901961684226989746f, 0.79607844352722167969f, 0.90980392694473266602f, 1.0f);
      }
      case 2i: {
        tint_symbol_93 = vec4f(0.0f, 0.50980395078659057617f, 0.72941178083419799805f, 1.0f);
      }
      case 1i: {
        tint_symbol_93 = vec4f(1.0f, 0.63921570777893066406f, 0.0f, 1.0f);
      }
      case 0i: {
        tint_symbol_93 = vec4f(0.90980392694473266602f, 0.46666666865348815918f, 0.13333334028720855713f, 1.0f);
      }
      default: {
        tint_symbol_93 = x_1637;
      }
    }
  } else {
    tint_symbol_93 = x_1640;
  }
  let x_1643 = tint_symbol_93;
  textureStore(tint_symbol_77, tint_symbol_92, x_1643);
  return;
}

fn tint_symbol_94(tint_symbol_92_1 : vec2i, tint_symbol_87_2 : f32, tint_symbol_88_2 : i32) {
  var tint_symbol_93_1 = vec4f();
  if ((tint_symbol_87_2 > 0.0f)) {
    tint_symbol_93_1 = vec4f((232.0f / (255.0f * tint_symbol_87_2)), (119.0f / (255.0f * tint_symbol_87_2)), (34.0f / (255.0f * tint_symbol_87_2)), 1.0f);
    switch(tint_symbol_88_2) {
      case 0i, 1i, 2i, 3i, 4i, 5i: {
      }
      default: {
        tint_symbol_93_1 = x_1637;
      }
    }
  } else {
    tint_symbol_93_1 = x_1640;
  }
  let x_1670 = tint_symbol_93_1;
  textureStore(tint_symbol_77, tint_symbol_92_1, x_1670);
  return;
}

const x_1692 = vec2f(2.0f);

fn tint_symbol_95_inner(tint_symbol_96 : vec3u) {
  var tint_symbol_37_1 = vec3f();
  var tint_symbol_99 = vec3f();
  var tint_symbol_58_2 = vec2f();
  var x_1688 : bool;
  var x_1689 : bool;
  let x_1675 = bitcast<vec2i>(tint_symbol_96.xy);
  let x_1678 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_77)));
  let x_1683 = (x_1675.x < x_1678.x);
  x_1689 = x_1683;
  if (x_1683) {
    x_1688 = (x_1675.y < x_1678.y);
    x_1689 = x_1688;
  }
  if (x_1689) {
    let x_1697 = (x_1692 / tint_symbol_75.inner.tint_symbol_66.xy);
    tint_symbol_37_1 = vec3f((((f32(x_1675.x) + 0.5f) * x_1697.x) - 1.0f), (((f32(x_1675.y) + 0.5f) * x_1697.y) - 1.0f), 0.0f);
    tint_symbol_99 = vec3f(0.0f, 0.0f, 1.0f);
    let x_1716 = tint_symbol_37_1;
    let x_1715 = tint_symbol_84(x_1716);
    tint_symbol_37_1 = x_1715;
    let x_1718 = tint_symbol_99;
    let x_1717 = tint_symbol_82(x_1718);
    tint_symbol_99 = x_1717;
    let x_1720 = tint_symbol_37_1;
    let x_1721 = tint_symbol_99;
    let x_1719 = tint_symbol_86(x_1720, x_1721);
    tint_symbol_58_2 = x_1719;
    let x_1725 = tint_symbol_58_2.x;
    let x_1728 = tint_symbol_58_2.y;
    let x_1726 = tint_ftoi(x_1728);
    tint_symbol_91(x_1675, x_1725, x_1726);
  }
  return;
}

fn tint_symbol_95_1() {
  let x_1733 = tint_symbol_96_1;
  tint_symbol_95_inner(x_1733);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_96_1_param : vec3u) {
  tint_symbol_96_1 = tint_symbol_96_1_param;
  tint_symbol_95_1();
}

fn tint_symbol_100_inner(tint_symbol_96_5 : vec3u) {
  var tint_symbol_37_2 = vec3f();
  var tint_symbol_99_1 = vec3f();
  var x_1776 = vec3f();
  var tint_symbol_58_3 = vec2f();
  var x_1749 : bool;
  var x_1750 : bool;
  let x_1737 = bitcast<vec2i>(tint_symbol_96_5.xy);
  let x_1739 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_77)));
  let x_1744 = (x_1737.x < x_1739.x);
  x_1750 = x_1744;
  if (x_1744) {
    x_1749 = (x_1737.y < x_1739.y);
    x_1750 = x_1749;
  }
  if (x_1750) {
    let x_1756 = (x_1692 / tint_symbol_75.inner.tint_symbol_66.xy);
    tint_symbol_37_2 = vec3f();
    tint_symbol_99_1 = vec3f((((f32(x_1737.x) + 0.5f) * x_1756.x) - 1.0f), (((f32(x_1737.y) + 0.5f) * x_1756.y) - 1.0f), 0.0f);
    tint_symbol_99_1 = (tint_symbol_99_1 / vec3f(length(tint_symbol_99_1)));
    let x_1779 = tint_symbol_37_2;
    let x_1778 = tint_symbol_84(x_1779);
    tint_symbol_37_2 = x_1778;
    let x_1781 = tint_symbol_99_1;
    let x_1780 = tint_symbol_82(x_1781);
    tint_symbol_99_1 = x_1780;
    let x_1783 = tint_symbol_37_2;
    let x_1784 = tint_symbol_99_1;
    let x_1782 = tint_symbol_86(x_1783, x_1784);
    tint_symbol_58_3 = x_1782;
    let x_1788 = tint_symbol_58_3.x;
    let x_1791 = tint_symbol_58_3.y;
    let x_1789 = tint_ftoi(x_1791);
    tint_symbol_91(x_1737, x_1788, x_1789);
  }
  return;
}

fn tint_symbol_100_1() {
  let x_1795 = tint_symbol_96_2;
  tint_symbol_100_inner(x_1795);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeMagicMain(@builtin(global_invocation_id) tint_symbol_96_2_param : vec3u) {
  tint_symbol_96_2 = tint_symbol_96_2_param;
  tint_symbol_100_1();
}

fn tint_symbol_101_inner(tint_symbol_96_6 : vec3u) {
  var tint_symbol_37_3 = vec3f();
  var tint_symbol_99_2 = vec3f();
  var x_1839 = vec3f();
  var tint_symbol_58_4 = vec2f();
  var x_1811 : bool;
  var x_1812 : bool;
  let x_1799 = bitcast<vec2i>(tint_symbol_96_6.xy);
  let x_1801 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_77)));
  let x_1806 = (x_1799.x < x_1801.x);
  x_1812 = x_1806;
  if (x_1806) {
    x_1811 = (x_1799.y < x_1801.y);
    x_1812 = x_1811;
  }
  if (x_1812) {
    let x_1818 = (x_1692 / tint_symbol_75.inner.tint_symbol_66.xy);
    tint_symbol_37_3 = vec3f();
    tint_symbol_99_2 = vec3f((((f32(x_1799.x) + 0.5f) * x_1818.x) - 1.0f), (((f32(x_1799.y) + 0.5f) * x_1818.y) - 1.0f), 0.10000000149011611938f);
    tint_symbol_99_2 = (tint_symbol_99_2 / vec3f(length(tint_symbol_99_2)));
    let x_1842 = tint_symbol_37_3;
    let x_1841 = tint_symbol_84(x_1842);
    tint_symbol_37_3 = x_1841;
    let x_1844 = tint_symbol_99_2;
    let x_1843 = tint_symbol_82(x_1844);
    tint_symbol_99_2 = x_1843;
    let x_1846 = tint_symbol_37_3;
    let x_1847 = tint_symbol_99_2;
    let x_1845 = tint_symbol_86(x_1846, x_1847);
    tint_symbol_58_4 = x_1845;
    let x_1851 = tint_symbol_58_4.x;
    let x_1854 = tint_symbol_58_4.y;
    let x_1852 = tint_ftoi(x_1854);
    tint_symbol_94(x_1799, x_1851, x_1852);
  }
  return;
}

fn tint_symbol_101_1() {
  let x_1858 = tint_symbol_96_3;
  tint_symbol_101_inner(x_1858);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeZoomedMain(@builtin(global_invocation_id) tint_symbol_96_3_param : vec3u) {
  tint_symbol_96_3 = tint_symbol_96_3_param;
  tint_symbol_101_1();
}

fn tint_symbol_102_inner(tint_symbol_96_7 : vec3u) {
  var tint_symbol_37_4 = vec3f();
  var tint_symbol_99_3 = vec3f();
  var tint_symbol_58_5 = vec2f();
  var x_1874 : bool;
  var x_1875 : bool;
  let x_1862 = bitcast<vec2i>(tint_symbol_96_7.xy);
  let x_1864 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_77)));
  let x_1869 = (x_1862.x < x_1864.x);
  x_1875 = x_1869;
  if (x_1869) {
    x_1874 = (x_1862.y < x_1864.y);
    x_1875 = x_1874;
  }
  if (x_1875) {
    let x_1885 = ((x_1692 / tint_symbol_75.inner.tint_symbol_66.xy) * tint_symbol_75.inner.tint_symbol_65.xy);
    tint_symbol_37_4 = vec3f();
    tint_symbol_99_3 = vec3f((((f32(x_1862.x) + 0.5f) * x_1885.x) - tint_symbol_75.inner.tint_symbol_65.x), (((f32(x_1862.y) + 0.5f) * x_1885.y) - tint_symbol_75.inner.tint_symbol_65.y), 1.0f);
    let x_1907 = tint_symbol_37_4;
    let x_1906 = tint_symbol_84(x_1907);
    tint_symbol_37_4 = x_1906;
    let x_1909 = tint_symbol_99_3;
    let x_1908 = tint_symbol_82(x_1909);
    tint_symbol_99_3 = x_1908;
    let x_1911 = tint_symbol_37_4;
    let x_1912 = tint_symbol_99_3;
    let x_1910 = tint_symbol_86(x_1911, x_1912);
    tint_symbol_58_5 = x_1910;
    let x_1916 = tint_symbol_58_5.x;
    let x_1919 = tint_symbol_58_5.y;
    let x_1917 = tint_ftoi(x_1919);
    tint_symbol_91(x_1862, x_1916, x_1917);
  }
  return;
}

fn tint_symbol_102_1() {
  let x_1923 = tint_symbol_96_4;
  tint_symbol_102_inner(x_1923);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_96_4_param : vec3u) {
  tint_symbol_96_4 = tint_symbol_96_4_param;
  tint_symbol_102_1();
}
