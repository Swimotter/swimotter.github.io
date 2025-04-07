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

struct tint_symbol_70_block {
  /* @offset(0) */
  inner : tint_symbol_63,
}

struct tint_symbol_67 {
  /* @offset(0) */
  tint_symbol_68 : vec4f,
  /* @offset(16) */
  tint_symbol_69 : vec4f,
}

struct tint_symbol_71_block {
  /* @offset(0) */
  inner : tint_symbol_67,
}

alias RTArr = array<f32>;

struct tint_symbol_72_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_52 {
  /* @offset(0) */
  tint_symbol_23 : vec3f,
  /* @offset(12) */
  tint_symbol_53 : bool,
  /* @offset(16) */
  tint_symbol_54 : bool,
}

var<private> tint_symbol_112_1 : vec3u;

var<private> tint_symbol_112_2 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_70 : tint_symbol_70_block;

@group(0) @binding(1) var<uniform> tint_symbol_71 : tint_symbol_71_block;

@group(0) @binding(2) var<storage> tint_symbol_72 : tint_symbol_72_block;

@group(0) @binding(3) var tint_symbol_73 : texture_storage_2d<rgba8unorm, write>;

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

fn tint_symbol_74(tint_symbol_28_6 : vec3f) -> vec3f {
  var tint_symbol_75 = vec3f();
  let x_1321 = tint_symbol_70.inner.tint_symbol_64;
  let x_1318 = tint_symbol_61(tint_symbol_28_6, x_1321);
  tint_symbol_75 = x_1318;
  let x_1324 = tint_symbol_75;
  return x_1324;
}

fn tint_symbol_76(tint_symbol_77 : vec3f) -> vec3f {
  var tint_symbol_75_1 = vec3f();
  let x_1330 = tint_symbol_70.inner.tint_symbol_64;
  let x_1328 = tint_symbol_60(tint_symbol_77, x_1330);
  tint_symbol_75_1 = x_1328;
  let x_1332 = tint_symbol_75_1;
  return x_1332;
}

const x_1344 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);

fn tint_symbol_78(tint_symbol_79 : vec2i) {
  var tint_symbol_80 = vec4f();
  tint_symbol_80 = x_1344;
  let x_1347 = tint_symbol_80;
  textureStore(tint_symbol_73, tint_symbol_79, x_1347);
  return;
}

fn tint_symbol_81(tint_symbol_82 : vec2f, tint_symbol_83 : f32) -> vec2f {
  var tint_symbol_84 = vec2f();
  tint_symbol_84 = tint_symbol_82;
  if ((tint_symbol_82.x < 0.0f)) {
    tint_symbol_84.x = tint_symbol_83;
  } else {
    if ((tint_symbol_83 < tint_symbol_82.x)) {
      tint_symbol_84.y = tint_symbol_82.x;
      tint_symbol_84.x = tint_symbol_83;
    } else {
      if ((tint_symbol_82.y < 0.0f)) {
        tint_symbol_84.y = tint_symbol_83;
      } else {
        if ((tint_symbol_83 < tint_symbol_82.y)) {
          tint_symbol_84.y = tint_symbol_83;
        }
      }
    }
  }
  let x_1381 = tint_symbol_84;
  return x_1381;
}

fn tint_symbol_85(tint_symbol_86 : f32, tint_symbol_87 : vec2f, tint_symbol_88 : f32, tint_symbol_89 : f32, tint_symbol_23_4 : vec2f, tint_symbol_28_7 : vec2f, tint_symbol_90 : vec2f) -> vec2f {
  var tint_symbol_91 = vec2f();
  tint_symbol_91 = tint_symbol_90;
  if ((abs(tint_symbol_89) > 0.00000000999999993923f)) {
    var x_1398 : f32;
    var x_1412 : bool;
    var x_1413 : bool;
    var x_1419 : bool;
    var x_1420 : bool;
    var x_1425 : bool;
    var x_1426 : bool;
    x_1398 = ((tint_symbol_86 - tint_symbol_88) / tint_symbol_89);
    if ((x_1398 > 0.0f)) {
      let x_1403 = (tint_symbol_23_4 + (tint_symbol_28_7 * x_1398));
      let x_1407 = (-(tint_symbol_87.x) < x_1403.x);
      x_1413 = x_1407;
      if (x_1407) {
        x_1412 = (x_1403.x < tint_symbol_87.x);
        x_1413 = x_1412;
      }
      x_1420 = x_1413;
      if (x_1413) {
        x_1419 = (-(tint_symbol_87.y) < x_1403.y);
        x_1420 = x_1419;
      }
      x_1426 = x_1420;
      if (x_1420) {
        x_1425 = (x_1403.y < tint_symbol_87.y);
        x_1426 = x_1425;
      }
      if (x_1426) {
        let x_1430 = tint_symbol_91;
        let x_1429 = tint_symbol_81(x_1430, x_1398);
        tint_symbol_91 = x_1429;
      }
    }
  }
  let x_1431 = tint_symbol_91;
  return x_1431;
}

fn tint_symbol_93(tint_symbol_23_5 : vec3f, tint_symbol_28_8 : vec3f) -> vec2f {
  var tint_symbol_94 = vec2f();
  var x_1458 = vec4f();
  tint_symbol_94 = vec2f(-1.0f);
  let x_1457 = (((tint_symbol_71.inner.tint_symbol_68 * tint_symbol_71.inner.tint_symbol_69) * 0.5f) / vec4f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
  let x_1467 = tint_symbol_94;
  let x_1460 = tint_symbol_85(x_1457.z, x_1457.xy, tint_symbol_23_5.z, tint_symbol_28_8.z, tint_symbol_23_5.xy, tint_symbol_28_8.xy, x_1467);
  tint_symbol_94 = x_1460;
  let x_1476 = tint_symbol_94;
  let x_1468 = tint_symbol_85(-(x_1457.z), x_1457.xy, tint_symbol_23_5.z, tint_symbol_28_8.z, tint_symbol_23_5.xy, tint_symbol_28_8.xy, x_1476);
  tint_symbol_94 = x_1468;
  let x_1485 = tint_symbol_94;
  let x_1477 = tint_symbol_85(-(x_1457.x), x_1457.yz, tint_symbol_23_5.x, tint_symbol_28_8.x, tint_symbol_23_5.yz, tint_symbol_28_8.yz, x_1485);
  tint_symbol_94 = x_1477;
  let x_1493 = tint_symbol_94;
  let x_1486 = tint_symbol_85(x_1457.x, x_1457.yz, tint_symbol_23_5.x, tint_symbol_28_8.x, tint_symbol_23_5.yz, tint_symbol_28_8.yz, x_1493);
  tint_symbol_94 = x_1486;
  let x_1501 = tint_symbol_94;
  let x_1494 = tint_symbol_85(x_1457.y, x_1457.xz, tint_symbol_23_5.y, tint_symbol_28_8.y, tint_symbol_23_5.xz, tint_symbol_28_8.xz, x_1501);
  tint_symbol_94 = x_1494;
  let x_1510 = tint_symbol_94;
  let x_1502 = tint_symbol_85(-(x_1457.y), x_1457.xz, tint_symbol_23_5.y, tint_symbol_28_8.y, tint_symbol_23_5.xz, tint_symbol_28_8.xz, x_1510);
  tint_symbol_94 = x_1502;
  let x_1511 = tint_symbol_94;
  return x_1511;
}

fn tint_symbol_95(tint_symbol_96 : f32, tint_symbol_90_1 : f32, tint_symbol_86_1 : f32, tint_symbol_97 : vec2f, tint_symbol_98 : vec2f, tint_symbol_88_1 : f32, tint_symbol_89_1 : f32, tint_symbol_23_6 : vec2f, tint_symbol_28_9 : vec2f) -> f32 {
  var tint_symbol_91_1 = 0.0f;
  var x_1540 : bool;
  var x_1541 : bool;
  var x_1546 : bool;
  var x_1547 : bool;
  var x_1552 : bool;
  var x_1553 : bool;
  tint_symbol_91_1 = tint_symbol_90_1;
  if ((abs(tint_symbol_89_1) > 0.00000000999999993923f)) {
    let x_1530 = ((tint_symbol_86_1 - tint_symbol_88_1) / tint_symbol_89_1);
    let x_1532 = (tint_symbol_23_6 + (tint_symbol_28_9 * x_1530));
    let x_1535 = (tint_symbol_97.x < x_1532.x);
    x_1541 = x_1535;
    if (x_1535) {
      x_1540 = (x_1532.x < tint_symbol_98.x);
      x_1541 = x_1540;
    }
    x_1547 = x_1541;
    if (x_1541) {
      x_1546 = (tint_symbol_97.y < x_1532.y);
      x_1547 = x_1546;
    }
    x_1553 = x_1547;
    if (x_1547) {
      x_1552 = (x_1532.y < tint_symbol_98.y);
      x_1553 = x_1552;
    }
    var x_1560 : bool;
    var x_1561 : bool;
    if (x_1553) {
      let x_1556 = (x_1530 > tint_symbol_96);
      x_1561 = x_1556;
      if (x_1556) {
        x_1560 = (tint_symbol_91_1 < x_1530);
        x_1561 = x_1560;
      }
      if (x_1561) {
        tint_symbol_91_1 = x_1530;
      }
    }
  }
  let x_1564 = tint_symbol_91_1;
  return x_1564;
}

const x_1701 = vec2f(-2.0f, 2.0f);

const x_1702 = vec2f(2.0f, -2.0f);

fn tint_symbol_99(tint_symbol_79_1 : vec2i, tint_symbol_23_7 : vec3f, tint_symbol_28_10 : vec3f) {
  var tint_symbol_100 = vec2f();
  var tint_symbol_80_1 = vec4f();
  var tint_symbol_102 = 0.0f;
  var x_1617 = vec3f();
  var x_1631 = vec3f();
  var tint_symbol_105 = 0.0f;
  var tint_symbol_109 = vec3f();
  var x_1689 = vec3f();
  var tint_symbol_110 = vec3f();
  var x_1582 : bool;
  var x_1583 : bool;
  let x_1571 = tint_symbol_93(tint_symbol_23_7, tint_symbol_28_10);
  tint_symbol_100 = x_1571;
  tint_symbol_80_1 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);
  let x_1577 = (tint_symbol_100.y < 0.0f);
  x_1583 = x_1577;
  if (x_1577) {
    x_1582 = (tint_symbol_100.x > 0.0f);
    x_1583 = x_1582;
  }
  if (x_1583) {
    tint_symbol_100.y = tint_symbol_100.x;
    tint_symbol_100.x = 0.0f;
  }
  if ((tint_symbol_100.x >= 0.0f)) {
    tint_symbol_102 = (tint_symbol_100.x + 0.00000000999999993923f);
    let x_1616 = (((tint_symbol_71.inner.tint_symbol_68.xyz * tint_symbol_71.inner.tint_symbol_69.xyz) * 0.5f) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
    let x_1630 = (tint_symbol_71.inner.tint_symbol_69.xyz / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
    tint_symbol_105 = 0.0f;
    loop {
      if (!((tint_symbol_102 < tint_symbol_100.y))) {
        break;
      }
      let x_1650 = (((tint_symbol_23_7 + (tint_symbol_28_10 * tint_symbol_102)) + x_1616) / (x_1616 * 2.0f));
      let x_1654 = tint_symbol_71.inner.tint_symbol_68.z;
      let x_1651 = tint_ftoi((x_1650.z * x_1654));
      let x_1658 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_1656 = tint_ftoi(x_1658);
      let x_1662 = tint_symbol_71.inner.tint_symbol_68.y;
      let x_1660 = tint_ftoi(x_1662);
      let x_1667 = tint_symbol_71.inner.tint_symbol_68.y;
      let x_1664 = tint_ftoi((x_1650.y * x_1667));
      let x_1671 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_1669 = tint_ftoi(x_1671);
      let x_1677 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_1674 = tint_ftoi((x_1650.x * x_1677));
      tint_symbol_105 = max(tint_symbol_105, tint_symbol_72.inner[((((x_1651 * x_1656) * x_1660) + (x_1664 * x_1669)) + x_1674)]);
      tint_symbol_109 = ((x_1650 * x_1616) * 2.0f);
      tint_symbol_110 = (((x_1650 + vec3f(1.0f)) * x_1616) * 2.0f);
      let x_1696 = tint_symbol_100.x;
      let x_1697 = tint_symbol_102;
      let x_1699 = tint_symbol_110.z;
      let x_1694 = tint_symbol_95(x_1696, x_1697, x_1699, x_1701, x_1702, tint_symbol_23_7.z, tint_symbol_28_10.z, tint_symbol_23_7.xy, tint_symbol_28_10.xy);
      tint_symbol_102 = x_1694;
      let x_1709 = tint_symbol_100.x;
      let x_1710 = tint_symbol_102;
      let x_1712 = tint_symbol_109.z;
      let x_1707 = tint_symbol_95(x_1709, x_1710, x_1712, x_1701, x_1702, tint_symbol_23_7.z, tint_symbol_28_10.z, tint_symbol_23_7.xy, tint_symbol_28_10.xy);
      tint_symbol_102 = x_1707;
      let x_1719 = tint_symbol_100.x;
      let x_1720 = tint_symbol_102;
      let x_1722 = tint_symbol_109.x;
      let x_1717 = tint_symbol_95(x_1719, x_1720, x_1722, x_1701, x_1702, tint_symbol_23_7.x, tint_symbol_28_10.x, tint_symbol_23_7.yz, tint_symbol_28_10.yz);
      tint_symbol_102 = x_1717;
      let x_1729 = tint_symbol_100.x;
      let x_1730 = tint_symbol_102;
      let x_1732 = tint_symbol_110.x;
      let x_1727 = tint_symbol_95(x_1729, x_1730, x_1732, x_1701, x_1702, tint_symbol_23_7.x, tint_symbol_28_10.x, tint_symbol_23_7.yz, tint_symbol_28_10.yz);
      tint_symbol_102 = x_1727;
      let x_1739 = tint_symbol_100.x;
      let x_1740 = tint_symbol_102;
      let x_1742 = tint_symbol_110.y;
      let x_1737 = tint_symbol_95(x_1739, x_1740, x_1742, x_1701, x_1702, tint_symbol_23_7.y, tint_symbol_28_10.y, tint_symbol_23_7.xz, tint_symbol_28_10.xz);
      tint_symbol_102 = x_1737;
      let x_1749 = tint_symbol_100.x;
      let x_1750 = tint_symbol_102;
      let x_1752 = tint_symbol_109.y;
      let x_1747 = tint_symbol_95(x_1749, x_1750, x_1752, x_1701, x_1702, tint_symbol_23_7.y, tint_symbol_28_10.y, tint_symbol_23_7.xz, tint_symbol_28_10.xz);
      tint_symbol_102 = x_1747;
      tint_symbol_102 = (tint_symbol_102 + 0.00999999977648258209f);
    }
    tint_symbol_105 = (tint_symbol_105 / 4095.0f);
    tint_symbol_80_1 = vec4f(tint_symbol_105, tint_symbol_105, tint_symbol_105, 1.0f);
  } else {
    tint_symbol_80_1 = x_1344;
  }
  let x_1769 = tint_symbol_80_1;
  textureStore(tint_symbol_73, tint_symbol_79_1, x_1769);
  return;
}

const x_1791 = vec2f(2.0f);

fn tint_symbol_111_inner(tint_symbol_112 : vec3u) {
  var tint_symbol_37_1 = vec3f();
  var tint_symbol_115 = vec3f();
  var x_1787 : bool;
  var x_1788 : bool;
  let x_1774 = bitcast<vec2i>(tint_symbol_112.xy);
  let x_1777 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_73)));
  let x_1782 = (x_1774.x < x_1777.x);
  x_1788 = x_1782;
  if (x_1782) {
    x_1787 = (x_1774.y < x_1777.y);
    x_1788 = x_1787;
  }
  if (x_1788) {
    let x_1796 = (x_1791 / tint_symbol_70.inner.tint_symbol_66.xy);
    tint_symbol_37_1 = vec3f((((f32(x_1774.x) + 0.5f) * x_1796.x) - 1.0f), (((f32(x_1774.y) + 0.5f) * x_1796.y) - 1.0f), 0.0f);
    tint_symbol_115 = vec3f(0.0f, 0.0f, 1.0f);
    let x_1814 = tint_symbol_37_1;
    let x_1813 = tint_symbol_76(x_1814);
    tint_symbol_37_1 = x_1813;
    let x_1816 = tint_symbol_115;
    let x_1815 = tint_symbol_74(x_1816);
    tint_symbol_115 = x_1815;
    let x_1818 = tint_symbol_37_1;
    let x_1819 = tint_symbol_115;
    tint_symbol_99(x_1774, x_1818, x_1819);
  }
  return;
}

fn tint_symbol_111_1() {
  let x_1824 = tint_symbol_112_1;
  tint_symbol_111_inner(x_1824);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_112_1_param : vec3u) {
  tint_symbol_112_1 = tint_symbol_112_1_param;
  tint_symbol_111_1();
}

fn tint_symbol_116_inner(tint_symbol_112_3 : vec3u) {
  var tint_symbol_37_2 = vec3f();
  var tint_symbol_115_1 = vec3f();
  var x_1840 : bool;
  var x_1841 : bool;
  let x_1828 = bitcast<vec2i>(tint_symbol_112_3.xy);
  let x_1830 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_73)));
  let x_1835 = (x_1828.x < x_1830.x);
  x_1841 = x_1835;
  if (x_1835) {
    x_1840 = (x_1828.y < x_1830.y);
    x_1841 = x_1840;
  }
  if (x_1841) {
    let x_1851 = ((x_1791 / tint_symbol_70.inner.tint_symbol_66.xy) * tint_symbol_70.inner.tint_symbol_65.xy);
    tint_symbol_37_2 = vec3f();
    tint_symbol_115_1 = vec3f((((f32(x_1828.x) + 0.5f) * x_1851.x) - tint_symbol_70.inner.tint_symbol_65.x), (((f32(x_1828.y) + 0.5f) * x_1851.y) - tint_symbol_70.inner.tint_symbol_65.y), 1.0f);
    let x_1872 = tint_symbol_37_2;
    let x_1871 = tint_symbol_76(x_1872);
    tint_symbol_37_2 = x_1871;
    let x_1874 = tint_symbol_115_1;
    let x_1873 = tint_symbol_74(x_1874);
    tint_symbol_115_1 = x_1873;
    let x_1876 = tint_symbol_37_2;
    let x_1877 = tint_symbol_115_1;
    tint_symbol_99(x_1828, x_1876, x_1877);
  }
  return;
}

fn tint_symbol_116_1() {
  let x_1881 = tint_symbol_112_2;
  tint_symbol_116_inner(x_1881);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_112_2_param : vec3u) {
  tint_symbol_112_2 = tint_symbol_112_2_param;
  tint_symbol_116_1();
}
