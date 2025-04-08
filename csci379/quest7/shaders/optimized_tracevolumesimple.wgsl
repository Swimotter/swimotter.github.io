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

struct tint_symbol_74_block {
  /* @offset(0) */
  inner : vec2u,
}

struct tint_symbol_52 {
  /* @offset(0) */
  tint_symbol_23 : vec3f,
  /* @offset(12) */
  tint_symbol_53 : bool,
  /* @offset(16) */
  tint_symbol_54 : bool,
}

var<private> tint_symbol_130_1 : vec3u;

var<private> tint_symbol_130_2 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_70 : tint_symbol_70_block;

@group(0) @binding(1) var<uniform> tint_symbol_71 : tint_symbol_71_block;

@group(0) @binding(2) var<storage> tint_symbol_72 : tint_symbol_72_block;

@group(0) @binding(3) var tint_symbol_73 : texture_storage_2d<rgba8unorm, write>;

@group(0) @binding(4) var<uniform> tint_symbol_74 : tint_symbol_74_block;

fn tint_ftoi(v : f32) -> i32 {
  return select(2147483647i, select(i32(v), i32(-2147483648), (v < -2147483648.0f)), (v < 2147483520.0f));
}

fn tint_saturate(v_1 : vec4f) -> vec4f {
  return clamp(v_1, vec4f(), vec4f(1.0f));
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
  let x_846 = tint_symbol_20;
  return x_846;
}

fn tint_symbol_21(tint_symbol_18_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_18_1.tint_symbol_1, -(tint_symbol_18_1.tint_symbol_2), -(tint_symbol_18_1.tint_symbol_3), -(tint_symbol_18_1.tint_symbol_4), -(tint_symbol_18_1.tint_symbol_5), -(tint_symbol_18_1.tint_symbol_6), -(tint_symbol_18_1.tint_symbol_7), -(tint_symbol_18_1.tint_symbol_8), -(tint_symbol_18_1.tint_symbol_9), -(tint_symbol_18_1.tint_symbol_10), -(tint_symbol_18_1.tint_symbol_11), tint_symbol_18_1.tint_symbol_12, tint_symbol_18_1.tint_symbol_13, tint_symbol_18_1.tint_symbol_14, tint_symbol_18_1.tint_symbol_15, tint_symbol_18_1.tint_symbol_16);
}

fn tint_symbol_22(tint_symbol_23 : tint_symbol, tint_symbol_24 : tint_symbol) -> tint_symbol {
  let x_882 = tint_symbol_21(tint_symbol_24);
  let x_883 = tint_symbol_17(tint_symbol_23, x_882);
  let x_884 = tint_symbol_17(tint_symbol_24, x_883);
  return x_884;
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
  let x_972 = tint_symbol_26;
  return sqrt(x_972);
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
  let x_1011 = tint_symbol_25(tint_symbol_24_3);
  if ((x_1011 == 0.0f)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  }
  if (!(tint_return_flag)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol((tint_symbol_24_3.tint_symbol_1 / x_1011), (tint_symbol_24_3.tint_symbol_2 / x_1011), (tint_symbol_24_3.tint_symbol_3 / x_1011), (tint_symbol_24_3.tint_symbol_4 / x_1011), (tint_symbol_24_3.tint_symbol_5 / x_1011), (tint_symbol_24_3.tint_symbol_6 / x_1011), (tint_symbol_24_3.tint_symbol_7 / x_1011), (tint_symbol_24_3.tint_symbol_8 / x_1011), (tint_symbol_24_3.tint_symbol_9 / x_1011), (tint_symbol_24_3.tint_symbol_10 / x_1011), (tint_symbol_24_3.tint_symbol_11 / x_1011), (tint_symbol_24_3.tint_symbol_12 / x_1011), (tint_symbol_24_3.tint_symbol_13 / x_1011), (tint_symbol_24_3.tint_symbol_14 / x_1011), (tint_symbol_24_3.tint_symbol_15 / x_1011), (tint_symbol_24_3.tint_symbol_16 / x_1011));
  }
  let x_1054 = tint_return_value;
  return x_1054;
}

fn tint_symbol_31(tint_symbol_1 : vec3f, tint_symbol_28_2 : vec3f) -> tint_symbol {
  let x_1060 = tint_symbol_30(tint_symbol_28_2);
  let x_1061 = tint_symbol_34(x_1060);
  return tint_symbol(0.0f, x_1061.tint_symbol_2, x_1061.tint_symbol_3, x_1061.tint_symbol_4, -(((-(x_1061.tint_symbol_3) * tint_symbol_1.z) - (x_1061.tint_symbol_2 * tint_symbol_1.y))), -(((x_1061.tint_symbol_2 * tint_symbol_1.x) - (x_1061.tint_symbol_4 * tint_symbol_1.z))), -(((x_1061.tint_symbol_4 * tint_symbol_1.y) + (x_1061.tint_symbol_3 * tint_symbol_1.x))), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_35(tint_symbol_36 : f32, tint_symbol_28_3 : vec3f, tint_symbol_37 : vec3f) -> tint_symbol {
  let x_1099 = sin((tint_symbol_36 / 2.0f));
  let x_1101 = tint_symbol_31(tint_symbol_37, tint_symbol_28_3);
  return tint_symbol(cos((tint_symbol_36 / 2.0f)), (x_1099 * x_1101.tint_symbol_2), (x_1099 * x_1101.tint_symbol_3), (x_1099 * x_1101.tint_symbol_4), (x_1099 * x_1101.tint_symbol_5), (x_1099 * x_1101.tint_symbol_6), (x_1099 * x_1101.tint_symbol_7), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
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
  let x_1265 = tint_symbol_43(vec3f(((((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z)) - ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z))) + ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z))), -(((((tint_symbol_46.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_46.z)) - ((tint_symbol_45.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_45.z))) + ((tint_symbol_45.x * tint_symbol_46.z) - (tint_symbol_46.x * tint_symbol_45.z)))), ((((tint_symbol_46.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_46.y)) - ((tint_symbol_45.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_45.y))) + ((tint_symbol_45.x * tint_symbol_46.y) - (tint_symbol_46.x * tint_symbol_45.y)))), (((tint_symbol_45.x * ((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z))) - (tint_symbol_46.x * ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z)))) + (tint_symbol_47.x * ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z)))));
  return x_1265;
}

fn tint_symbol_55(tint_symbol_39 : tint_symbol, tint_symbol_56 : tint_symbol) -> tint_symbol_52 {
  var tint_symbol_58 = tint_symbol_52(vec3f(), false, false);
  var x_1294 : bool;
  var x_1295 : bool;
  var x_1300 : bool;
  var x_1301 : bool;
  var x_1306 : bool;
  var x_1307 : bool;
  let x_1274 = tint_symbol_17(tint_symbol_39, tint_symbol_56);
  let x_1280 = tint_symbol_42(x_1274);
  tint_symbol_58.tint_symbol_23 = x_1280;
  tint_symbol_58.tint_symbol_53 = !((abs(x_1274.tint_symbol_8) <= 0.00000000999999993923f));
  let x_1289 = tint_symbol_58.tint_symbol_53;
  x_1295 = x_1289;
  if (x_1289) {
    x_1294 = (abs(x_1274.tint_symbol_9) <= 0.00000000999999993923f);
    x_1295 = x_1294;
  }
  x_1301 = x_1295;
  if (x_1295) {
    x_1300 = (abs(x_1274.tint_symbol_10) <= 0.00000000999999993923f);
    x_1301 = x_1300;
  }
  x_1307 = x_1301;
  if (x_1301) {
    x_1306 = (abs(x_1274.tint_symbol_11) <= 0.00000000999999993923f);
    x_1307 = x_1306;
  }
  tint_symbol_58.tint_symbol_54 = x_1307;
  let x_1308 = tint_symbol_58;
  return x_1308;
}

fn tint_symbol_60(tint_symbol_23_3 : vec3f, tint_symbol_24_5 : tint_symbol) -> vec3f {
  let x_1314 = tint_symbol_41(tint_symbol_23_3);
  let x_1315 = tint_symbol_22(x_1314, tint_symbol_24_5);
  let x_1316 = tint_symbol_42(x_1315);
  return x_1316;
}

fn tint_symbol_61(tint_symbol_28_5 : vec3f, tint_symbol_24_6 : tint_symbol) -> vec3f {
  let x_1321 = tint_symbol_40(tint_symbol_24_6);
  let x_1322 = tint_symbol_41(tint_symbol_28_5);
  let x_1323 = tint_symbol_22(x_1322, x_1321);
  let x_1324 = tint_symbol_42(x_1323);
  return x_1324;
}

fn tint_symbol_75(tint_symbol_28_6 : vec3f) -> vec3f {
  var tint_symbol_76 = vec3f();
  let x_1332 = tint_symbol_70.inner.tint_symbol_64;
  let x_1329 = tint_symbol_61(tint_symbol_28_6, x_1332);
  tint_symbol_76 = x_1329;
  let x_1335 = tint_symbol_76;
  return x_1335;
}

fn tint_symbol_77(tint_symbol_78 : vec3f) -> vec3f {
  var tint_symbol_76_1 = vec3f();
  let x_1341 = tint_symbol_70.inner.tint_symbol_64;
  let x_1339 = tint_symbol_60(tint_symbol_78, x_1341);
  tint_symbol_76_1 = x_1339;
  let x_1343 = tint_symbol_76_1;
  return x_1343;
}

const x_1354 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);

fn tint_symbol_79(tint_symbol_80 : vec2i) {
  var tint_symbol_81 = vec4f();
  tint_symbol_81 = x_1354;
  let x_1357 = tint_symbol_81;
  textureStore(tint_symbol_73, tint_symbol_80, x_1357);
  return;
}

fn tint_symbol_82(tint_symbol_83 : vec2f, tint_symbol_84 : f32) -> vec2f {
  var tint_symbol_85 = vec2f();
  tint_symbol_85 = tint_symbol_83;
  if ((tint_symbol_83.x < 0.0f)) {
    tint_symbol_85.x = tint_symbol_84;
  } else {
    if ((tint_symbol_84 < tint_symbol_83.x)) {
      tint_symbol_85.y = tint_symbol_83.x;
      tint_symbol_85.x = tint_symbol_84;
    } else {
      if ((tint_symbol_83.y < 0.0f)) {
        tint_symbol_85.y = tint_symbol_84;
      } else {
        if ((tint_symbol_84 < tint_symbol_83.y)) {
          tint_symbol_85.y = tint_symbol_84;
        }
      }
    }
  }
  let x_1391 = tint_symbol_85;
  return x_1391;
}

fn tint_symbol_86(tint_symbol_87 : f32, tint_symbol_88 : vec2f, tint_symbol_89 : f32, tint_symbol_90 : f32, tint_symbol_23_4 : vec2f, tint_symbol_28_7 : vec2f, tint_symbol_91 : vec2f) -> vec2f {
  var tint_symbol_92 = vec2f();
  tint_symbol_92 = tint_symbol_91;
  if ((abs(tint_symbol_90) > 0.00000000999999993923f)) {
    var x_1408 : f32;
    var x_1422 : bool;
    var x_1423 : bool;
    var x_1429 : bool;
    var x_1430 : bool;
    var x_1435 : bool;
    var x_1436 : bool;
    x_1408 = ((tint_symbol_87 - tint_symbol_89) / tint_symbol_90);
    if ((x_1408 > 0.0f)) {
      let x_1413 = (tint_symbol_23_4 + (tint_symbol_28_7 * x_1408));
      let x_1417 = (-(tint_symbol_88.x) < x_1413.x);
      x_1423 = x_1417;
      if (x_1417) {
        x_1422 = (x_1413.x < tint_symbol_88.x);
        x_1423 = x_1422;
      }
      x_1430 = x_1423;
      if (x_1423) {
        x_1429 = (-(tint_symbol_88.y) < x_1413.y);
        x_1430 = x_1429;
      }
      x_1436 = x_1430;
      if (x_1430) {
        x_1435 = (x_1413.y < tint_symbol_88.y);
        x_1436 = x_1435;
      }
      if (x_1436) {
        let x_1440 = tint_symbol_92;
        let x_1439 = tint_symbol_82(x_1440, x_1408);
        tint_symbol_92 = x_1439;
      }
    }
  }
  let x_1441 = tint_symbol_92;
  return x_1441;
}

fn tint_symbol_94(tint_symbol_23_5 : vec3f, tint_symbol_28_8 : vec3f) -> vec2f {
  var tint_symbol_95 = vec2f();
  var x_1468 = vec4f();
  tint_symbol_95 = vec2f(-1.0f);
  let x_1467 = (((tint_symbol_71.inner.tint_symbol_68 * tint_symbol_71.inner.tint_symbol_69) * 0.5f) / vec4f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
  let x_1477 = tint_symbol_95;
  let x_1470 = tint_symbol_86(x_1467.z, x_1467.xy, tint_symbol_23_5.z, tint_symbol_28_8.z, tint_symbol_23_5.xy, tint_symbol_28_8.xy, x_1477);
  tint_symbol_95 = x_1470;
  let x_1486 = tint_symbol_95;
  let x_1478 = tint_symbol_86(-(x_1467.z), x_1467.xy, tint_symbol_23_5.z, tint_symbol_28_8.z, tint_symbol_23_5.xy, tint_symbol_28_8.xy, x_1486);
  tint_symbol_95 = x_1478;
  let x_1495 = tint_symbol_95;
  let x_1487 = tint_symbol_86(-(x_1467.x), x_1467.yz, tint_symbol_23_5.x, tint_symbol_28_8.x, tint_symbol_23_5.yz, tint_symbol_28_8.yz, x_1495);
  tint_symbol_95 = x_1487;
  let x_1503 = tint_symbol_95;
  let x_1496 = tint_symbol_86(x_1467.x, x_1467.yz, tint_symbol_23_5.x, tint_symbol_28_8.x, tint_symbol_23_5.yz, tint_symbol_28_8.yz, x_1503);
  tint_symbol_95 = x_1496;
  let x_1511 = tint_symbol_95;
  let x_1504 = tint_symbol_86(x_1467.y, x_1467.xz, tint_symbol_23_5.y, tint_symbol_28_8.y, tint_symbol_23_5.xz, tint_symbol_28_8.xz, x_1511);
  tint_symbol_95 = x_1504;
  let x_1520 = tint_symbol_95;
  let x_1512 = tint_symbol_86(-(x_1467.y), x_1467.xz, tint_symbol_23_5.y, tint_symbol_28_8.y, tint_symbol_23_5.xz, tint_symbol_28_8.xz, x_1520);
  tint_symbol_95 = x_1512;
  let x_1521 = tint_symbol_95;
  return x_1521;
}

fn tint_symbol_96(tint_symbol_97 : f32, tint_symbol_91_1 : f32, tint_symbol_87_1 : f32, tint_symbol_98 : vec2f, tint_symbol_99 : vec2f, tint_symbol_89_1 : f32, tint_symbol_90_1 : f32, tint_symbol_23_6 : vec2f, tint_symbol_28_9 : vec2f) -> f32 {
  var tint_symbol_92_1 = 0.0f;
  var x_1550 : bool;
  var x_1551 : bool;
  var x_1556 : bool;
  var x_1557 : bool;
  var x_1562 : bool;
  var x_1563 : bool;
  tint_symbol_92_1 = tint_symbol_91_1;
  if ((abs(tint_symbol_90_1) > 0.00000000999999993923f)) {
    let x_1540 = ((tint_symbol_87_1 - tint_symbol_89_1) / tint_symbol_90_1);
    let x_1542 = (tint_symbol_23_6 + (tint_symbol_28_9 * x_1540));
    let x_1545 = (tint_symbol_98.x < x_1542.x);
    x_1551 = x_1545;
    if (x_1545) {
      x_1550 = (x_1542.x < tint_symbol_99.x);
      x_1551 = x_1550;
    }
    x_1557 = x_1551;
    if (x_1551) {
      x_1556 = (tint_symbol_98.y < x_1542.y);
      x_1557 = x_1556;
    }
    x_1563 = x_1557;
    if (x_1557) {
      x_1562 = (x_1542.y < tint_symbol_99.y);
      x_1563 = x_1562;
    }
    var x_1570 : bool;
    var x_1571 : bool;
    if (x_1563) {
      let x_1566 = (x_1540 > tint_symbol_97);
      x_1571 = x_1566;
      if (x_1566) {
        x_1570 = (tint_symbol_92_1 < x_1540);
        x_1571 = x_1570;
      }
      if (x_1571) {
        tint_symbol_92_1 = x_1540;
      }
    }
  }
  let x_1574 = tint_symbol_92_1;
  return x_1574;
}

fn tint_symbol_103(tint_symbol_23_7 : vec3f, tint_symbol_28_10 : vec3f, tint_symbol_123 : f32, tint_symbol_124 : f32) -> vec4f {
  let x_1582 = (tint_symbol_124 - tint_symbol_123);
  return vec4f(x_1582, (1.0f - x_1582), 0.0f, 1.0f);
}

fn tint_symbol_104(tint_symbol_23_8 : vec3f, tint_symbol_28_11 : vec3f, tint_symbol_123_1 : f32, tint_symbol_124_1 : f32) -> vec4f {
  var tint_symbol_109 = 0.0f;
  var x_1606 = vec3f();
  var tint_symbol_127 = 0.0f;
  var x_1622 = vec3f();
  var tint_symbol_98_1 = vec3f();
  var tint_symbol_99_1 = vec3f();
  tint_symbol_109 = (tint_symbol_123_1 + 0.00200000009499490261f);
  let x_1605 = (tint_symbol_71.inner.tint_symbol_69.xyz / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
  tint_symbol_127 = 0.0f;
  loop {
    if (!((tint_symbol_109 < tint_symbol_124_1))) {
      break;
    }
    let x_1629 = (((tint_symbol_23_8 + (tint_symbol_28_11 * tint_symbol_109)) + ((x_1605 / vec3f(2.0f)) * tint_symbol_71.inner.tint_symbol_68.xyz)) / x_1605);
    let x_1630 = tint_ftoi(x_1629.z);
    let x_1634 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_1636 = tint_symbol_71.inner.tint_symbol_68.y;
    let x_1632 = tint_ftoi((x_1634 * x_1636));
    let x_1639 = tint_ftoi(x_1629.y);
    let x_1643 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_1641 = tint_ftoi(x_1643);
    let x_1646 = tint_ftoi(x_1629.x);
    tint_symbol_98_1 = floor(x_1629);
    tint_symbol_99_1 = ceil(x_1629);
    let x_1654 = tint_symbol_109;
    let x_1656 = tint_symbol_98_1.z;
    let x_1657 = tint_symbol_98_1;
    let x_1659 = tint_symbol_99_1;
    let x_1653 = tint_symbol_96(tint_symbol_123_1, x_1654, x_1656, x_1657.xy, x_1659.xy, tint_symbol_23_8.z, tint_symbol_28_11.z, tint_symbol_23_8.xy, tint_symbol_28_11.xy);
    tint_symbol_109 = x_1653;
    let x_1666 = tint_symbol_109;
    let x_1668 = tint_symbol_99_1.z;
    let x_1669 = tint_symbol_98_1;
    let x_1671 = tint_symbol_99_1;
    let x_1665 = tint_symbol_96(tint_symbol_123_1, x_1666, x_1668, x_1669.xy, x_1671.xy, tint_symbol_23_8.z, tint_symbol_28_11.z, tint_symbol_23_8.xy, tint_symbol_28_11.xy);
    tint_symbol_109 = x_1665;
    let x_1678 = tint_symbol_109;
    let x_1680 = tint_symbol_98_1.x;
    let x_1681 = tint_symbol_98_1;
    let x_1683 = tint_symbol_99_1;
    let x_1677 = tint_symbol_96(tint_symbol_123_1, x_1678, x_1680, x_1681.yz, x_1683.yz, tint_symbol_23_8.x, tint_symbol_28_11.x, tint_symbol_23_8.yz, tint_symbol_28_11.yz);
    tint_symbol_109 = x_1677;
    let x_1690 = tint_symbol_109;
    let x_1692 = tint_symbol_99_1.x;
    let x_1693 = tint_symbol_98_1;
    let x_1695 = tint_symbol_99_1;
    let x_1689 = tint_symbol_96(tint_symbol_123_1, x_1690, x_1692, x_1693.yz, x_1695.yz, tint_symbol_23_8.x, tint_symbol_28_11.x, tint_symbol_23_8.yz, tint_symbol_28_11.yz);
    tint_symbol_109 = x_1689;
    let x_1702 = tint_symbol_109;
    let x_1704 = tint_symbol_98_1.y;
    let x_1705 = tint_symbol_98_1;
    let x_1707 = tint_symbol_99_1;
    let x_1701 = tint_symbol_96(tint_symbol_123_1, x_1702, x_1704, x_1705.xz, x_1707.xz, tint_symbol_23_8.y, tint_symbol_28_11.y, tint_symbol_23_8.xz, tint_symbol_28_11.xz);
    tint_symbol_109 = x_1701;
    let x_1714 = tint_symbol_109;
    let x_1716 = tint_symbol_99_1.y;
    let x_1717 = tint_symbol_98_1;
    let x_1719 = tint_symbol_99_1;
    let x_1713 = tint_symbol_96(tint_symbol_123_1, x_1714, x_1716, x_1717.xz, x_1719.xz, tint_symbol_23_8.y, tint_symbol_28_11.y, tint_symbol_23_8.xz, tint_symbol_28_11.xz);
    tint_symbol_109 = x_1713;
    tint_symbol_127 = max(tint_symbol_127, (tint_symbol_72.inner[(((x_1630 * x_1632) + (x_1639 * x_1641)) + x_1646)] / 4095.0f));
    tint_symbol_109 = (tint_symbol_109 + 0.00200000009499490261f);
  }
  let x_1734 = tint_symbol_127;
  let x_1735 = tint_symbol_127;
  let x_1736 = tint_symbol_127;
  return vec4f(x_1734, x_1735, x_1736, 1.0f);
}

fn tint_symbol_105(tint_symbol_23_9 : vec3f, tint_symbol_28_12 : vec3f, tint_symbol_123_2 : f32, tint_symbol_124_2 : f32) -> vec4f {
  var tint_symbol_109_1 = 0.0f;
  var x_1758 = vec3f();
  var tint_symbol_127_1 = 0.0f;
  var x_1774 = vec3f();
  var tint_symbol_98_2 = vec3f();
  var tint_symbol_99_2 = vec3f();
  var tint_symbol_114 = 0.0f;
  tint_symbol_109_1 = (tint_symbol_123_2 + 0.00200000009499490261f);
  let x_1757 = (tint_symbol_71.inner.tint_symbol_69.xyz / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
  tint_symbol_127_1 = 0.0f;
  loop {
    if (!((tint_symbol_109_1 < tint_symbol_124_2))) {
      break;
    }
    let x_1781 = (((tint_symbol_23_9 + (tint_symbol_28_12 * tint_symbol_109_1)) + ((x_1757 / vec3f(2.0f)) * tint_symbol_71.inner.tint_symbol_68.xyz)) / x_1757);
    let x_1782 = tint_ftoi(x_1781.z);
    let x_1786 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_1788 = tint_symbol_71.inner.tint_symbol_68.y;
    let x_1784 = tint_ftoi((x_1786 * x_1788));
    let x_1791 = tint_ftoi(x_1781.y);
    let x_1795 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_1793 = tint_ftoi(x_1795);
    let x_1798 = tint_ftoi(x_1781.x);
    tint_symbol_98_2 = floor(x_1781);
    tint_symbol_99_2 = ceil(x_1781);
    tint_symbol_114 = tint_symbol_109_1;
    let x_1808 = tint_symbol_114;
    let x_1810 = tint_symbol_98_2.z;
    let x_1811 = tint_symbol_98_2;
    let x_1813 = tint_symbol_99_2;
    let x_1807 = tint_symbol_96(tint_symbol_123_2, x_1808, x_1810, x_1811.xy, x_1813.xy, tint_symbol_23_9.z, tint_symbol_28_12.z, tint_symbol_23_9.xy, tint_symbol_28_12.xy);
    tint_symbol_114 = x_1807;
    let x_1820 = tint_symbol_114;
    let x_1822 = tint_symbol_99_2.z;
    let x_1823 = tint_symbol_98_2;
    let x_1825 = tint_symbol_99_2;
    let x_1819 = tint_symbol_96(tint_symbol_123_2, x_1820, x_1822, x_1823.xy, x_1825.xy, tint_symbol_23_9.z, tint_symbol_28_12.z, tint_symbol_23_9.xy, tint_symbol_28_12.xy);
    tint_symbol_114 = x_1819;
    let x_1832 = tint_symbol_114;
    let x_1834 = tint_symbol_98_2.x;
    let x_1835 = tint_symbol_98_2;
    let x_1837 = tint_symbol_99_2;
    let x_1831 = tint_symbol_96(tint_symbol_123_2, x_1832, x_1834, x_1835.yz, x_1837.yz, tint_symbol_23_9.x, tint_symbol_28_12.x, tint_symbol_23_9.yz, tint_symbol_28_12.yz);
    tint_symbol_114 = x_1831;
    let x_1844 = tint_symbol_114;
    let x_1846 = tint_symbol_99_2.x;
    let x_1847 = tint_symbol_98_2;
    let x_1849 = tint_symbol_99_2;
    let x_1843 = tint_symbol_96(tint_symbol_123_2, x_1844, x_1846, x_1847.yz, x_1849.yz, tint_symbol_23_9.x, tint_symbol_28_12.x, tint_symbol_23_9.yz, tint_symbol_28_12.yz);
    tint_symbol_114 = x_1843;
    let x_1856 = tint_symbol_114;
    let x_1858 = tint_symbol_98_2.y;
    let x_1859 = tint_symbol_98_2;
    let x_1861 = tint_symbol_99_2;
    let x_1855 = tint_symbol_96(tint_symbol_123_2, x_1856, x_1858, x_1859.xz, x_1861.xz, tint_symbol_23_9.y, tint_symbol_28_12.y, tint_symbol_23_9.xz, tint_symbol_28_12.xz);
    tint_symbol_114 = x_1855;
    let x_1868 = tint_symbol_114;
    let x_1870 = tint_symbol_99_2.y;
    let x_1871 = tint_symbol_98_2;
    let x_1873 = tint_symbol_99_2;
    let x_1867 = tint_symbol_96(tint_symbol_123_2, x_1868, x_1870, x_1871.xz, x_1873.xz, tint_symbol_23_9.y, tint_symbol_28_12.y, tint_symbol_23_9.xz, tint_symbol_28_12.xz);
    tint_symbol_114 = x_1867;
    tint_symbol_127_1 = (tint_symbol_127_1 + ((((tint_symbol_114 - tint_symbol_109_1) + 0.00200000009499490261f) * tint_symbol_72.inner[(((x_1782 * x_1784) + (x_1791 * x_1793)) + x_1798)]) / 4095.0f));
    tint_symbol_109_1 = (tint_symbol_114 + 0.00200000009499490261f);
  }
  let x_1891 = tint_symbol_127_1;
  let x_1892 = tint_symbol_127_1;
  let x_1893 = tint_symbol_127_1;
  return vec4f(x_1891, x_1892, x_1893, 1.0f);
}

const x_1904 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);

fn tint_symbol_100(tint_symbol_80_1 : vec2i, tint_symbol_23_10 : vec3f, tint_symbol_28_13 : vec3f, tint_symbol_101 : u32) {
  var tint_symbol_102 = vec2f();
  var tint_symbol_81_1 = vec4f();
  var x_1913 : bool;
  var x_1914 : bool;
  let x_1902 = tint_symbol_94(tint_symbol_23_10, tint_symbol_28_13);
  tint_symbol_102 = x_1902;
  tint_symbol_81_1 = x_1904;
  let x_1908 = (tint_symbol_102.y < 0.0f);
  x_1914 = x_1908;
  if (x_1908) {
    x_1913 = (tint_symbol_102.x > 0.0f);
    x_1914 = x_1913;
  }
  if (x_1914) {
    tint_symbol_102.y = tint_symbol_102.x;
    tint_symbol_102.x = 0.0f;
  }
  if ((tint_symbol_102.x >= 0.0f)) {
    switch(tint_symbol_101) {
      case 2u: {
        let x_1944 = tint_symbol_102.x;
        let x_1946 = tint_symbol_102.y;
        let x_1942 = tint_symbol_105(tint_symbol_23_10, tint_symbol_28_13, x_1944, x_1946);
        tint_symbol_81_1 = x_1942;
      }
      case 1u: {
        let x_1939 = tint_symbol_102.x;
        let x_1941 = tint_symbol_102.y;
        let x_1937 = tint_symbol_104(tint_symbol_23_10, tint_symbol_28_13, x_1939, x_1941);
        tint_symbol_81_1 = x_1937;
      }
      case 0u: {
        let x_1934 = tint_symbol_102.x;
        let x_1936 = tint_symbol_102.y;
        let x_1932 = tint_symbol_103(tint_symbol_23_10, tint_symbol_28_13, x_1934, x_1936);
        tint_symbol_81_1 = x_1932;
      }
      default: {
        let x_1949 = tint_symbol_102.x;
        let x_1951 = tint_symbol_102.y;
        let x_1947 = tint_symbol_103(tint_symbol_23_10, tint_symbol_28_13, x_1949, x_1951);
        tint_symbol_81_1 = x_1947;
      }
    }
  } else {
    tint_symbol_81_1 = x_1354;
  }
  let x_1954 = tint_symbol_81_1;
  textureStore(tint_symbol_73, tint_symbol_80_1, x_1954);
  return;
}

fn tint_symbol_118(tint_symbol_121 : vec4f, tint_symbol_122 : vec4f, tint_symbol_84_1 : f32) -> vec4f {
  return ((tint_symbol_121 * tint_symbol_84_1) + (tint_symbol_122 * (1.0f - tint_symbol_84_1)));
}

fn tint_symbol_106(tint_symbol_80_2 : vec2i, tint_symbol_23_11 : vec3f, tint_symbol_28_14 : vec3f, tint_symbol_101_1 : u32) {
  var tint_symbol_102_1 = vec2f();
  var tint_symbol_81_2 = vec4f();
  var tint_symbol_107 = vec4f();
  var tint_symbol_108 = 0.0f;
  var tint_symbol_109_2 = 0.0f;
  var x_1995 = vec3f();
  var x_2012 = vec3f();
  var tint_symbol_98_3 = vec3f();
  var tint_symbol_99_3 = vec3f();
  var tint_symbol_114_1 = 0.0f;
  var tint_symbol_115 = 0.0f;
  var tint_symbol_116 = 0.0f;
  var tint_symbol_117 = 0.0f;
  let x_1971 = tint_symbol_94(tint_symbol_23_11, tint_symbol_28_14);
  tint_symbol_102_1 = x_1971;
  tint_symbol_81_2 = x_1904;
  tint_symbol_107 = vec4f(0.69999998807907104492f, 0.69999998807907104492f, 0.80000001192092895508f, 1.0f);
  tint_symbol_108 = 1.0f;
  tint_symbol_109_2 = (tint_symbol_102_1.x + 0.00200000009499490261f);
  let x_1994 = (tint_symbol_71.inner.tint_symbol_69.xyz / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
  loop {
    var x_2134 : bool;
    var x_2139 : bool;
    if (!((tint_symbol_109_2 < tint_symbol_102_1.y))) {
      break;
    }
    let x_2019 = (((tint_symbol_23_11 + (tint_symbol_28_14 * tint_symbol_109_2)) + ((x_1994 / vec3f(2.0f)) * tint_symbol_71.inner.tint_symbol_68.xyz)) / x_1994);
    let x_2020 = tint_ftoi(x_2019.z);
    let x_2024 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2026 = tint_symbol_71.inner.tint_symbol_68.y;
    let x_2022 = tint_ftoi((x_2024 * x_2026));
    let x_2029 = tint_ftoi(x_2019.y);
    let x_2033 = tint_symbol_71.inner.tint_symbol_68.x;
    let x_2031 = tint_ftoi(x_2033);
    let x_2036 = tint_ftoi(x_2019.x);
    let x_2038 = (((x_2020 * x_2022) + (x_2029 * x_2031)) + x_2036);
    tint_symbol_98_3 = floor(x_2019);
    tint_symbol_99_3 = ceil(x_2019);
    tint_symbol_114_1 = tint_symbol_109_2;
    let x_2047 = tint_symbol_102_1.x;
    let x_2048 = tint_symbol_114_1;
    let x_2050 = tint_symbol_98_3.z;
    let x_2051 = tint_symbol_98_3;
    let x_2053 = tint_symbol_99_3;
    let x_2045 = tint_symbol_96(x_2047, x_2048, x_2050, x_2051.xy, x_2053.xy, tint_symbol_23_11.z, tint_symbol_28_14.z, tint_symbol_23_11.xy, tint_symbol_28_14.xy);
    tint_symbol_114_1 = x_2045;
    let x_2061 = tint_symbol_102_1.x;
    let x_2062 = tint_symbol_114_1;
    let x_2064 = tint_symbol_99_3.z;
    let x_2065 = tint_symbol_98_3;
    let x_2067 = tint_symbol_99_3;
    let x_2059 = tint_symbol_96(x_2061, x_2062, x_2064, x_2065.xy, x_2067.xy, tint_symbol_23_11.z, tint_symbol_28_14.z, tint_symbol_23_11.xy, tint_symbol_28_14.xy);
    tint_symbol_114_1 = x_2059;
    let x_2075 = tint_symbol_102_1.x;
    let x_2076 = tint_symbol_114_1;
    let x_2078 = tint_symbol_98_3.x;
    let x_2079 = tint_symbol_98_3;
    let x_2081 = tint_symbol_99_3;
    let x_2073 = tint_symbol_96(x_2075, x_2076, x_2078, x_2079.yz, x_2081.yz, tint_symbol_23_11.x, tint_symbol_28_14.x, tint_symbol_23_11.yz, tint_symbol_28_14.yz);
    tint_symbol_114_1 = x_2073;
    let x_2089 = tint_symbol_102_1.x;
    let x_2090 = tint_symbol_114_1;
    let x_2092 = tint_symbol_99_3.x;
    let x_2093 = tint_symbol_98_3;
    let x_2095 = tint_symbol_99_3;
    let x_2087 = tint_symbol_96(x_2089, x_2090, x_2092, x_2093.yz, x_2095.yz, tint_symbol_23_11.x, tint_symbol_28_14.x, tint_symbol_23_11.yz, tint_symbol_28_14.yz);
    tint_symbol_114_1 = x_2087;
    let x_2103 = tint_symbol_102_1.x;
    let x_2104 = tint_symbol_114_1;
    let x_2106 = tint_symbol_98_3.y;
    let x_2107 = tint_symbol_98_3;
    let x_2109 = tint_symbol_99_3;
    let x_2101 = tint_symbol_96(x_2103, x_2104, x_2106, x_2107.xz, x_2109.xz, tint_symbol_23_11.y, tint_symbol_28_14.y, tint_symbol_23_11.xz, tint_symbol_28_14.xz);
    tint_symbol_114_1 = x_2101;
    let x_2117 = tint_symbol_102_1.x;
    let x_2118 = tint_symbol_114_1;
    let x_2120 = tint_symbol_99_3.y;
    let x_2121 = tint_symbol_98_3;
    let x_2123 = tint_symbol_99_3;
    let x_2115 = tint_symbol_96(x_2117, x_2118, x_2120, x_2121.xz, x_2123.xz, tint_symbol_23_11.y, tint_symbol_28_14.y, tint_symbol_23_11.xz, tint_symbol_28_14.xz);
    tint_symbol_114_1 = x_2115;
    let x_2129 = all((x_2019 >= vec3f()));
    x_2139 = x_2129;
    if (x_2129) {
      x_2134 = all((x_2019 < tint_symbol_71.inner.tint_symbol_68.xyz));
      x_2139 = x_2134;
    }
    if (x_2139) {
      let x_2142 = tint_ftoi(x_2019.z);
      let x_2146 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_2148 = tint_symbol_71.inner.tint_symbol_68.y;
      let x_2144 = tint_ftoi((x_2146 * x_2148));
      let x_2151 = tint_ftoi(x_2019.y);
      let x_2155 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_2153 = tint_ftoi(x_2155);
      let x_2158 = tint_ftoi(x_2019.x);
      tint_symbol_115 = tint_symbol_72.inner[(((x_2142 * x_2144) + (x_2151 * x_2153)) + x_2158)];
      tint_symbol_116 = clamp((tint_symbol_115 * 0.01999999955296516418f), 0.0f, 0.10000000149011611938f);
      tint_symbol_117 = (tint_symbol_116 * tint_symbol_108);
      tint_symbol_108 = (tint_symbol_108 - tint_symbol_117);
      tint_symbol_81_2 = (tint_symbol_81_2 + (tint_symbol_107 * tint_symbol_117));
      if ((tint_symbol_108 < 0.10000000149011611938f)) {
        break;
      }
    }
    tint_symbol_109_2 = (tint_symbol_114_1 + 0.00200000009499490261f);
  }
  let x_2189 = tint_symbol_81_2;
  let x_2188 = tint_saturate(x_2189);
  tint_symbol_81_2 = x_2188;
  if ((tint_symbol_108 > 0.10000000149011611938f)) {
    tint_symbol_81_2 = x_1354;
  } else {
    let x_2196 = tint_symbol_81_2;
    let x_2197 = tint_symbol_109_2;
    let x_2199 = tint_symbol_102_1.y;
    let x_2195 = tint_symbol_118(x_1354, x_2196, (x_2197 - x_2199));
    tint_symbol_81_2 = x_2195;
  }
  let x_2203 = tint_symbol_81_2;
  textureStore(tint_symbol_73, tint_symbol_80_2, x_2203);
  return;
}

fn tint_symbol_119(tint_symbol_80_3 : vec2i, tint_symbol_23_12 : vec3f, tint_symbol_28_15 : vec3f, tint_symbol_101_2 : u32) {
  var tint_symbol_102_2 = vec2f();
  var tint_symbol_109_3 = 0.0f;
  var x_2233 = vec3f();
  var x_2249 = vec3f();
  var tint_symbol_81_3 = vec4f();
  var tint_symbol_98_4 = vec3f();
  var tint_symbol_99_4 = vec3f();
  let x_2210 = tint_symbol_94(tint_symbol_23_12, tint_symbol_28_15);
  tint_symbol_102_2 = x_2210;
  tint_symbol_109_3 = (tint_symbol_102_2.x + 0.01999999955296516418f);
  let x_2232 = (((tint_symbol_71.inner.tint_symbol_68.xyz * tint_symbol_71.inner.tint_symbol_69.xyz) * 0.5f) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
  let x_2248 = ((vec3f(1.0f) * tint_symbol_71.inner.tint_symbol_69.xyz) / vec3f(max(max(tint_symbol_71.inner.tint_symbol_68.x, tint_symbol_71.inner.tint_symbol_68.y), tint_symbol_71.inner.tint_symbol_68.z)));
  tint_symbol_81_3 = x_1354;
  loop {
    var x_2360 : bool;
    var x_2365 : bool;
    if (!((tint_symbol_109_3 < tint_symbol_102_2.y))) {
      break;
    }
    let x_2267 = (((tint_symbol_23_12 + (tint_symbol_28_15 * tint_symbol_109_3)) + x_2232) / x_2248);
    tint_symbol_98_4 = floor(x_2267);
    tint_symbol_99_4 = ceil(x_2267);
    let x_2274 = tint_symbol_102_2.x;
    let x_2275 = tint_symbol_109_3;
    let x_2277 = tint_symbol_98_4.z;
    let x_2278 = tint_symbol_98_4;
    let x_2280 = tint_symbol_99_4;
    let x_2272 = tint_symbol_96(x_2274, x_2275, x_2277, x_2278.xy, x_2280.xy, tint_symbol_23_12.z, tint_symbol_28_15.z, tint_symbol_23_12.xy, tint_symbol_28_15.xy);
    tint_symbol_109_3 = x_2272;
    let x_2288 = tint_symbol_102_2.x;
    let x_2289 = tint_symbol_109_3;
    let x_2291 = tint_symbol_99_4.z;
    let x_2292 = tint_symbol_98_4;
    let x_2294 = tint_symbol_99_4;
    let x_2286 = tint_symbol_96(x_2288, x_2289, x_2291, x_2292.xy, x_2294.xy, tint_symbol_23_12.z, tint_symbol_28_15.z, tint_symbol_23_12.xy, tint_symbol_28_15.xy);
    tint_symbol_109_3 = x_2286;
    let x_2302 = tint_symbol_102_2.x;
    let x_2303 = tint_symbol_109_3;
    let x_2305 = tint_symbol_98_4.x;
    let x_2306 = tint_symbol_98_4;
    let x_2308 = tint_symbol_99_4;
    let x_2300 = tint_symbol_96(x_2302, x_2303, x_2305, x_2306.yz, x_2308.yz, tint_symbol_23_12.x, tint_symbol_28_15.x, tint_symbol_23_12.yz, tint_symbol_28_15.yz);
    tint_symbol_109_3 = x_2300;
    let x_2316 = tint_symbol_102_2.x;
    let x_2317 = tint_symbol_109_3;
    let x_2319 = tint_symbol_99_4.x;
    let x_2320 = tint_symbol_98_4;
    let x_2322 = tint_symbol_99_4;
    let x_2314 = tint_symbol_96(x_2316, x_2317, x_2319, x_2320.yz, x_2322.yz, tint_symbol_23_12.x, tint_symbol_28_15.x, tint_symbol_23_12.yz, tint_symbol_28_15.yz);
    tint_symbol_109_3 = x_2314;
    let x_2330 = tint_symbol_102_2.x;
    let x_2331 = tint_symbol_109_3;
    let x_2333 = tint_symbol_98_4.y;
    let x_2334 = tint_symbol_98_4;
    let x_2336 = tint_symbol_99_4;
    let x_2328 = tint_symbol_96(x_2330, x_2331, x_2333, x_2334.xz, x_2336.xz, tint_symbol_23_12.y, tint_symbol_28_15.y, tint_symbol_23_12.xz, tint_symbol_28_15.xz);
    tint_symbol_109_3 = x_2328;
    let x_2344 = tint_symbol_102_2.x;
    let x_2345 = tint_symbol_109_3;
    let x_2347 = tint_symbol_99_4.y;
    let x_2348 = tint_symbol_98_4;
    let x_2350 = tint_symbol_99_4;
    let x_2342 = tint_symbol_96(x_2344, x_2345, x_2347, x_2348.xz, x_2350.xz, tint_symbol_23_12.y, tint_symbol_28_15.y, tint_symbol_23_12.xz, tint_symbol_28_15.xz);
    tint_symbol_109_3 = x_2342;
    let x_2356 = all((x_2267 >= vec3f()));
    x_2365 = x_2356;
    if (x_2356) {
      x_2360 = all((x_2267 < tint_symbol_71.inner.tint_symbol_68.xyz));
      x_2365 = x_2360;
    }
    if (x_2365) {
      var x_2386 : i32;
      let x_2368 = tint_ftoi(x_2267.z);
      let x_2372 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_2374 = tint_symbol_71.inner.tint_symbol_68.y;
      let x_2370 = tint_ftoi((x_2372 * x_2374));
      let x_2377 = tint_ftoi(x_2267.y);
      let x_2381 = tint_symbol_71.inner.tint_symbol_68.x;
      let x_2379 = tint_ftoi(x_2381);
      let x_2384 = tint_ftoi(x_2267.x);
      x_2386 = (((x_2368 * x_2370) + (x_2377 * x_2379)) + x_2384);
      let x_2389 = tint_symbol_72.inner[x_2386];
      let x_2387 = tint_ftoi(x_2389);
      if ((x_2387 != 0i)) {
        if ((tint_symbol_72.inner[x_2386] < (tint_symbol_71.inner.tint_symbol_68.y * 0.10000000149011611938f))) {
          tint_symbol_81_3 = vec4f(1.0f, 0.98039215803146362305f, 0.98039215803146362305f, 1.0f);
        } else {
          if ((tint_symbol_72.inner[x_2386] < (tint_symbol_71.inner.tint_symbol_68.y * 0.34999999403953552246f))) {
            tint_symbol_81_3 = vec4f(0.50588238239288330078f, 0.54509806632995605469f, 0.60000002384185791016f, 1.0f);
          } else {
            if ((tint_symbol_72.inner[x_2386] < (tint_symbol_71.inner.tint_symbol_68.y * 0.60000002384185791016f))) {
              tint_symbol_81_3 = vec4f(0.0f, 0.6666666865348815918f, 0.0f, 1.0f);
            } else {
              tint_symbol_81_3 = vec4f(0.3764705955982208252f, 0.69411766529083251953f, 0.78039216995239257812f, 1.0f);
            }
          }
        }
        break;
      }
    }
    tint_symbol_109_3 = (tint_symbol_109_3 + 0.00200000009499490261f);
  }
  let x_2437 = tint_symbol_81_3;
  textureStore(tint_symbol_73, tint_symbol_80_3, x_2437);
  return;
}

const x_2458 = vec2f(2.0f);

fn tint_symbol_129_inner(tint_symbol_130 : vec3u) {
  var tint_symbol_37_1 = vec3f();
  var tint_symbol_133 = vec3f();
  var x_2454 : bool;
  var x_2455 : bool;
  let x_2442 = bitcast<vec2i>(tint_symbol_130.xy);
  let x_2444 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_73)));
  let x_2449 = (x_2442.x < x_2444.x);
  x_2455 = x_2449;
  if (x_2449) {
    x_2454 = (x_2442.y < x_2444.y);
    x_2455 = x_2454;
  }
  if (x_2455) {
    let x_2463 = (x_2458 / tint_symbol_70.inner.tint_symbol_66.xy);
    tint_symbol_37_1 = vec3f((((f32(x_2442.x) + 0.5f) * x_2463.x) - 1.0f), (((f32(x_2442.y) + 0.5f) * x_2463.y) - 1.0f), 0.0f);
    tint_symbol_133 = vec3f(0.0f, 0.0f, 1.0f);
    let x_2481 = tint_symbol_37_1;
    let x_2480 = tint_symbol_77(x_2481);
    tint_symbol_37_1 = x_2480;
    let x_2483 = tint_symbol_133;
    let x_2482 = tint_symbol_75(x_2483);
    tint_symbol_133 = x_2482;
    let x_2487 = tint_symbol_74.inner.y;
    switch(x_2487) {
      case 2u: {
        let x_2502 = tint_symbol_37_1;
        let x_2503 = tint_symbol_133;
        let x_2505 = tint_symbol_74.inner[0i];
        tint_symbol_119(x_2442, x_2502, x_2503, x_2505);
      }
      case 1u: {
        let x_2497 = tint_symbol_37_1;
        let x_2498 = tint_symbol_133;
        let x_2500 = tint_symbol_74.inner[0i];
        tint_symbol_106(x_2442, x_2497, x_2498, x_2500);
      }
      case 0u, default: {
        let x_2492 = tint_symbol_37_1;
        let x_2493 = tint_symbol_133;
        let x_2495 = tint_symbol_74.inner[0i];
        tint_symbol_100(x_2442, x_2492, x_2493, x_2495);
      }
    }
  }
  return;
}

fn tint_symbol_129_1() {
  let x_2510 = tint_symbol_130_1;
  tint_symbol_129_inner(x_2510);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_130_1_param : vec3u) {
  tint_symbol_130_1 = tint_symbol_130_1_param;
  tint_symbol_129_1();
}

fn tint_symbol_134_inner(tint_symbol_130_3 : vec3u) {
  var tint_symbol_37_2 = vec3f();
  var tint_symbol_133_1 = vec3f();
  var x_2526 : bool;
  var x_2527 : bool;
  let x_2514 = bitcast<vec2i>(tint_symbol_130_3.xy);
  let x_2516 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_73)));
  let x_2521 = (x_2514.x < x_2516.x);
  x_2527 = x_2521;
  if (x_2521) {
    x_2526 = (x_2514.y < x_2516.y);
    x_2527 = x_2526;
  }
  if (x_2527) {
    let x_2537 = ((x_2458 / tint_symbol_70.inner.tint_symbol_66.xy) * tint_symbol_70.inner.tint_symbol_65.xy);
    tint_symbol_37_2 = vec3f();
    tint_symbol_133_1 = normalize(vec3f((((f32(x_2514.x) + 0.5f) * x_2537.x) - tint_symbol_70.inner.tint_symbol_65.x), (((f32(x_2514.y) + 0.5f) * x_2537.y) - tint_symbol_70.inner.tint_symbol_65.y), 1.0f));
    let x_2559 = tint_symbol_37_2;
    let x_2558 = tint_symbol_77(x_2559);
    tint_symbol_37_2 = x_2558;
    let x_2561 = tint_symbol_133_1;
    let x_2560 = tint_symbol_75(x_2561);
    tint_symbol_133_1 = x_2560;
    let x_2564 = tint_symbol_74.inner.y;
    switch(x_2564) {
      case 2u: {
        let x_2579 = tint_symbol_37_2;
        let x_2580 = tint_symbol_133_1;
        let x_2582 = tint_symbol_74.inner[0i];
        tint_symbol_119(x_2514, x_2579, x_2580, x_2582);
      }
      case 1u: {
        let x_2574 = tint_symbol_37_2;
        let x_2575 = tint_symbol_133_1;
        let x_2577 = tint_symbol_74.inner[0i];
        tint_symbol_106(x_2514, x_2574, x_2575, x_2577);
      }
      case 0u, default: {
        let x_2569 = tint_symbol_37_2;
        let x_2570 = tint_symbol_133_1;
        let x_2572 = tint_symbol_74.inner[0i];
        tint_symbol_100(x_2514, x_2569, x_2570, x_2572);
      }
    }
  }
  return;
}

fn tint_symbol_134_1() {
  let x_2586 = tint_symbol_130_2;
  tint_symbol_134_inner(x_2586);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_130_2_param : vec3u) {
  tint_symbol_130_2 = tint_symbol_130_2_param;
  tint_symbol_134_1();
}
