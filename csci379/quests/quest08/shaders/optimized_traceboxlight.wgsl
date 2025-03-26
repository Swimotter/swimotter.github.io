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

struct tint_symbol_117 {
  /* @offset(0) */
  tint_symbol_76 : vec4f,
  /* @offset(16) */
  tint_symbol_118 : vec3f,
}

var<private> tint_symbol_134_1 : vec3u;

var<private> tint_symbol_134_2 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_82 : tint_symbol_82_block;

@group(0) @binding(1) var<uniform> tint_symbol_83 : tint_symbol_83_block;

@group(0) @binding(2) var tint_symbol_84 : texture_storage_2d<rgba8unorm, write>;

@group(0) @binding(3) var<uniform> tint_symbol_85 : tint_symbol_85_block;

@group(0) @binding(4) var tint_symbol_86 : texture_2d<f32>;

@group(0) @binding(5) var tint_symbol_87 : texture_2d<f32>;

@group(0) @binding(6) var tint_symbol_88 : texture_2d<f32>;

@group(0) @binding(7) var tint_symbol_89 : texture_2d<f32>;

@group(0) @binding(8) var tint_symbol_90 : texture_2d<f32>;

fn tint_ftoi(v : vec2f) -> vec2i {
  return select(vec2i(2147483647i), select(vec2i(v), vec2i(i32(-2147483648)), (v < vec2f(-2147483648.0f))), (v < vec2f(2147483520.0f)));
}

fn tint_ftoi_1(v_1 : f32) -> i32 {
  return select(2147483647i, select(i32(v_1), i32(-2147483648), (v_1 < -2147483648.0f)), (v_1 < 2147483520.0f));
}

const x_74 = vec4f(1.0f);

fn tint_saturate(v_2 : vec4f) -> vec4f {
  return clamp(v_2, vec4f(), x_74);
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
  let x_867 = tint_symbol_20;
  return x_867;
}

fn tint_symbol_21(tint_symbol_18_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_18_1.tint_symbol_1, -(tint_symbol_18_1.tint_symbol_2), -(tint_symbol_18_1.tint_symbol_3), -(tint_symbol_18_1.tint_symbol_4), -(tint_symbol_18_1.tint_symbol_5), -(tint_symbol_18_1.tint_symbol_6), -(tint_symbol_18_1.tint_symbol_7), -(tint_symbol_18_1.tint_symbol_8), -(tint_symbol_18_1.tint_symbol_9), -(tint_symbol_18_1.tint_symbol_10), -(tint_symbol_18_1.tint_symbol_11), tint_symbol_18_1.tint_symbol_12, tint_symbol_18_1.tint_symbol_13, tint_symbol_18_1.tint_symbol_14, tint_symbol_18_1.tint_symbol_15, tint_symbol_18_1.tint_symbol_16);
}

fn tint_symbol_22(tint_symbol_23 : tint_symbol, tint_symbol_24 : tint_symbol) -> tint_symbol {
  let x_903 = tint_symbol_21(tint_symbol_24);
  let x_904 = tint_symbol_17(tint_symbol_23, x_903);
  let x_905 = tint_symbol_17(tint_symbol_24, x_904);
  return x_905;
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
  let x_993 = tint_symbol_26;
  return sqrt(x_993);
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
  let x_1032 = tint_symbol_25(tint_symbol_24_3);
  if ((x_1032 == 0.0f)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol(1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
  }
  if (!(tint_return_flag)) {
    tint_return_flag = true;
    tint_return_value = tint_symbol((tint_symbol_24_3.tint_symbol_1 / x_1032), (tint_symbol_24_3.tint_symbol_2 / x_1032), (tint_symbol_24_3.tint_symbol_3 / x_1032), (tint_symbol_24_3.tint_symbol_4 / x_1032), (tint_symbol_24_3.tint_symbol_5 / x_1032), (tint_symbol_24_3.tint_symbol_6 / x_1032), (tint_symbol_24_3.tint_symbol_7 / x_1032), (tint_symbol_24_3.tint_symbol_8 / x_1032), (tint_symbol_24_3.tint_symbol_9 / x_1032), (tint_symbol_24_3.tint_symbol_10 / x_1032), (tint_symbol_24_3.tint_symbol_11 / x_1032), (tint_symbol_24_3.tint_symbol_12 / x_1032), (tint_symbol_24_3.tint_symbol_13 / x_1032), (tint_symbol_24_3.tint_symbol_14 / x_1032), (tint_symbol_24_3.tint_symbol_15 / x_1032), (tint_symbol_24_3.tint_symbol_16 / x_1032));
  }
  let x_1075 = tint_return_value;
  return x_1075;
}

fn tint_symbol_31(tint_symbol_1 : vec3f, tint_symbol_28_2 : vec3f) -> tint_symbol {
  let x_1081 = tint_symbol_30(tint_symbol_28_2);
  let x_1082 = tint_symbol_34(x_1081);
  return tint_symbol(0.0f, x_1082.tint_symbol_2, x_1082.tint_symbol_3, x_1082.tint_symbol_4, -(((-(x_1082.tint_symbol_3) * tint_symbol_1.z) - (x_1082.tint_symbol_2 * tint_symbol_1.y))), -(((x_1082.tint_symbol_2 * tint_symbol_1.x) - (x_1082.tint_symbol_4 * tint_symbol_1.z))), -(((x_1082.tint_symbol_4 * tint_symbol_1.y) + (x_1082.tint_symbol_3 * tint_symbol_1.x))), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
}

fn tint_symbol_35(tint_symbol_36 : f32, tint_symbol_28_3 : vec3f, tint_symbol_37 : vec3f) -> tint_symbol {
  let x_1120 = sin((tint_symbol_36 / 2.0f));
  let x_1122 = tint_symbol_31(tint_symbol_37, tint_symbol_28_3);
  return tint_symbol(cos((tint_symbol_36 / 2.0f)), (x_1120 * x_1122.tint_symbol_2), (x_1120 * x_1122.tint_symbol_3), (x_1120 * x_1122.tint_symbol_4), (x_1120 * x_1122.tint_symbol_5), (x_1120 * x_1122.tint_symbol_6), (x_1120 * x_1122.tint_symbol_7), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
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
  let x_1286 = tint_symbol_43(vec3f(((((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z)) - ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z))) + ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z))), -(((((tint_symbol_46.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_46.z)) - ((tint_symbol_45.x * tint_symbol_47.z) - (tint_symbol_47.x * tint_symbol_45.z))) + ((tint_symbol_45.x * tint_symbol_46.z) - (tint_symbol_46.x * tint_symbol_45.z)))), ((((tint_symbol_46.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_46.y)) - ((tint_symbol_45.x * tint_symbol_47.y) - (tint_symbol_47.x * tint_symbol_45.y))) + ((tint_symbol_45.x * tint_symbol_46.y) - (tint_symbol_46.x * tint_symbol_45.y)))), (((tint_symbol_45.x * ((tint_symbol_46.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_46.z))) - (tint_symbol_46.x * ((tint_symbol_45.y * tint_symbol_47.z) - (tint_symbol_47.y * tint_symbol_45.z)))) + (tint_symbol_47.x * ((tint_symbol_45.y * tint_symbol_46.z) - (tint_symbol_46.y * tint_symbol_45.z)))));
  return x_1286;
}

fn tint_symbol_55(tint_symbol_39 : tint_symbol, tint_symbol_56 : tint_symbol) -> tint_symbol_52 {
  var tint_symbol_58 = tint_symbol_52(vec3f(), false, false);
  var x_1315 : bool;
  var x_1316 : bool;
  var x_1321 : bool;
  var x_1322 : bool;
  var x_1327 : bool;
  var x_1328 : bool;
  let x_1295 = tint_symbol_17(tint_symbol_39, tint_symbol_56);
  let x_1301 = tint_symbol_42(x_1295);
  tint_symbol_58.tint_symbol_23 = x_1301;
  tint_symbol_58.tint_symbol_53 = !((abs(x_1295.tint_symbol_8) <= 0.00000000999999993923f));
  let x_1310 = tint_symbol_58.tint_symbol_53;
  x_1316 = x_1310;
  if (x_1310) {
    x_1315 = (abs(x_1295.tint_symbol_9) <= 0.00000000999999993923f);
    x_1316 = x_1315;
  }
  x_1322 = x_1316;
  if (x_1316) {
    x_1321 = (abs(x_1295.tint_symbol_10) <= 0.00000000999999993923f);
    x_1322 = x_1321;
  }
  x_1328 = x_1322;
  if (x_1322) {
    x_1327 = (abs(x_1295.tint_symbol_11) <= 0.00000000999999993923f);
    x_1328 = x_1327;
  }
  tint_symbol_58.tint_symbol_54 = x_1328;
  let x_1329 = tint_symbol_58;
  return x_1329;
}

fn tint_symbol_60(tint_symbol_23_3 : vec3f, tint_symbol_24_5 : tint_symbol) -> vec3f {
  let x_1335 = tint_symbol_41(tint_symbol_23_3);
  let x_1336 = tint_symbol_22(x_1335, tint_symbol_24_5);
  let x_1337 = tint_symbol_42(x_1336);
  return x_1337;
}

fn tint_symbol_61(tint_symbol_28_5 : vec3f, tint_symbol_24_6 : tint_symbol) -> vec3f {
  let x_1342 = tint_symbol_40(tint_symbol_24_6);
  let x_1343 = tint_symbol_41(tint_symbol_28_5);
  let x_1344 = tint_symbol_22(x_1343, x_1342);
  let x_1345 = tint_symbol_42(x_1344);
  return x_1345;
}

fn tint_symbol_91(tint_symbol_1_1 : vec3f, tint_symbol_28_6 : vec3f, tint_symbol_92 : tint_symbol_67, tint_symbol_93 : f32) -> vec2f {
  var tint_return_flag_1 = false;
  var tint_return_value_1 = vec2f();
  var tint_symbol_58_1 = tint_symbol_52(vec3f(), false, false);
  var tint_symbol_94 = 0.0f;
  let x_1357 = tint_symbol_31(tint_symbol_1_1, tint_symbol_28_6);
  let x_1359 = tint_symbol_92.tint_symbol_68;
  let x_1361 = tint_symbol_92.tint_symbol_69;
  let x_1363 = tint_symbol_92.tint_symbol_70;
  let x_1358 = tint_symbol_44(x_1359.xyz, x_1361.xyz, x_1363.xyz);
  let x_1365 = tint_symbol_55(x_1357, x_1358);
  tint_symbol_58_1 = x_1365;
  if (tint_symbol_58_1.tint_symbol_53) {
    var x_1393 : bool;
    var x_1394 : bool;
    var x_1409 : bool;
    var x_1410 : bool;
    if ((abs((tint_symbol_92.tint_symbol_68.z - tint_symbol_92.tint_symbol_70.z)) <= 0.00000000999999993923f)) {
      let x_1386 = (tint_symbol_92.tint_symbol_68.x <= tint_symbol_58_1.tint_symbol_23.x);
      x_1394 = x_1386;
      if (x_1386) {
        x_1393 = (tint_symbol_58_1.tint_symbol_23.x <= tint_symbol_92.tint_symbol_70.x);
        x_1394 = x_1393;
      }
      var x_1408 : bool;
      x_1410 = x_1394;
      if (x_1394) {
        let x_1401 = (tint_symbol_92.tint_symbol_68.y <= tint_symbol_58_1.tint_symbol_23.y);
        x_1409 = x_1401;
        if (x_1401) {
          x_1408 = (tint_symbol_58_1.tint_symbol_23.y <= tint_symbol_92.tint_symbol_70.y);
          x_1409 = x_1408;
        }
        x_1410 = x_1409;
      }
      tint_symbol_58_1.tint_symbol_53 = x_1410;
    } else {
      var x_1433 : bool;
      var x_1434 : bool;
      var x_1449 : bool;
      var x_1450 : bool;
      if ((abs((tint_symbol_92.tint_symbol_68.y - tint_symbol_92.tint_symbol_70.y)) <= 0.00000000999999993923f)) {
        let x_1426 = (tint_symbol_92.tint_symbol_68.x <= tint_symbol_58_1.tint_symbol_23.x);
        x_1434 = x_1426;
        if (x_1426) {
          x_1433 = (tint_symbol_58_1.tint_symbol_23.x <= tint_symbol_92.tint_symbol_70.x);
          x_1434 = x_1433;
        }
        var x_1448 : bool;
        x_1450 = x_1434;
        if (x_1434) {
          let x_1441 = (tint_symbol_92.tint_symbol_68.z <= tint_symbol_58_1.tint_symbol_23.z);
          x_1449 = x_1441;
          if (x_1441) {
            x_1448 = (tint_symbol_58_1.tint_symbol_23.z <= tint_symbol_92.tint_symbol_70.z);
            x_1449 = x_1448;
          }
          x_1450 = x_1449;
        }
        tint_symbol_58_1.tint_symbol_53 = x_1450;
      } else {
        var x_1472 : bool;
        var x_1473 : bool;
        var x_1488 : bool;
        var x_1489 : bool;
        if ((abs((tint_symbol_92.tint_symbol_68.x - tint_symbol_92.tint_symbol_70.x)) <= 0.00000000999999993923f)) {
          let x_1465 = (tint_symbol_92.tint_symbol_68.y <= tint_symbol_58_1.tint_symbol_23.y);
          x_1473 = x_1465;
          if (x_1465) {
            x_1472 = (tint_symbol_58_1.tint_symbol_23.y <= tint_symbol_92.tint_symbol_70.y);
            x_1473 = x_1472;
          }
          var x_1487 : bool;
          x_1489 = x_1473;
          if (x_1473) {
            let x_1480 = (tint_symbol_92.tint_symbol_68.z <= tint_symbol_58_1.tint_symbol_23.z);
            x_1488 = x_1480;
            if (x_1480) {
              x_1487 = (tint_symbol_58_1.tint_symbol_23.z <= tint_symbol_92.tint_symbol_70.z);
              x_1488 = x_1487;
            }
            x_1489 = x_1488;
          }
          tint_symbol_58_1.tint_symbol_53 = x_1489;
        }
      }
    }
    if (tint_symbol_58_1.tint_symbol_53) {
      tint_symbol_94 = -1.0f;
      if ((tint_symbol_28_6.x > 0.00000000999999993923f)) {
        tint_symbol_94 = ((tint_symbol_58_1.tint_symbol_23.x - tint_symbol_1_1.x) / tint_symbol_28_6.x);
      } else {
        if ((tint_symbol_28_6.y > 0.00000000999999993923f)) {
          tint_symbol_94 = ((tint_symbol_58_1.tint_symbol_23.y - tint_symbol_1_1.y) / tint_symbol_28_6.y);
        } else {
          tint_symbol_94 = ((tint_symbol_58_1.tint_symbol_23.z - tint_symbol_1_1.z) / tint_symbol_28_6.z);
        }
      }
      if ((tint_symbol_94 < 0.0f)) {
        tint_return_flag_1 = true;
        tint_return_value_1 = vec2f(tint_symbol_93, -1.0f);
      } else {
        if ((tint_symbol_93 < 0.0f)) {
          tint_return_flag_1 = true;
          tint_return_value_1 = vec2f(tint_symbol_94, 1.0f);
        } else {
          if ((tint_symbol_94 < tint_symbol_93)) {
            tint_return_flag_1 = true;
            tint_return_value_1 = vec2f(tint_symbol_94, 1.0f);
          } else {
            tint_return_flag_1 = true;
            tint_return_value_1 = vec2f(tint_symbol_93, -1.0f);
          }
        }
      }
    }
  }
  if (!(tint_return_flag_1)) {
    tint_return_flag_1 = true;
    tint_return_value_1 = vec2f(tint_symbol_93, -1.0f);
  }
  let x_1549 = tint_return_value_1;
  return x_1549;
}

fn tint_symbol_95(tint_symbol_28_7 : vec3f) -> vec3f {
  var tint_symbol_96 = vec3f();
  let x_1557 = tint_symbol_82.inner.tint_symbol_64;
  let x_1554 = tint_symbol_61(tint_symbol_28_7, x_1557);
  tint_symbol_96 = x_1554;
  let x_1560 = tint_symbol_96;
  let x_1563 = tint_symbol_83.inner.tint_symbol_64;
  let x_1561 = tint_symbol_21(x_1563);
  let x_1564 = tint_symbol_61(x_1560, x_1561);
  tint_symbol_96 = x_1564;
  tint_symbol_96 = (tint_symbol_96 / tint_symbol_83.inner.tint_symbol_73.xyz);
  let x_1571 = tint_symbol_96;
  return x_1571;
}

fn tint_symbol_97(tint_symbol_98 : vec3f) -> vec3f {
  var tint_symbol_96_1 = vec3f();
  let x_1577 = tint_symbol_82.inner.tint_symbol_64;
  let x_1575 = tint_symbol_60(tint_symbol_98, x_1577);
  tint_symbol_96_1 = x_1575;
  let x_1579 = tint_symbol_96_1;
  let x_1582 = tint_symbol_83.inner.tint_symbol_64;
  let x_1580 = tint_symbol_21(x_1582);
  let x_1583 = tint_symbol_60(x_1579, x_1580);
  tint_symbol_96_1 = x_1583;
  tint_symbol_96_1 = (tint_symbol_96_1 / tint_symbol_83.inner.tint_symbol_73.xyz);
  let x_1589 = tint_symbol_96_1;
  return x_1589;
}

fn tint_symbol_99(tint_symbol_32_1 : vec3f) -> vec3f {
  var tint_symbol_96_2 = vec3f();
  tint_symbol_96_2 = (tint_symbol_32_1 * tint_symbol_83.inner.tint_symbol_73.xyz);
  let x_1599 = tint_symbol_96_2;
  let x_1601 = tint_symbol_83.inner.tint_symbol_64;
  let x_1598 = tint_symbol_61(x_1599, x_1601);
  tint_symbol_96_2 = x_1598;
  let x_1603 = tint_symbol_96_2;
  return normalize(x_1603);
}

fn tint_symbol_100(tint_symbol_98_1 : vec3f) -> vec3f {
  var tint_symbol_96_3 = vec3f();
  tint_symbol_96_3 = (tint_symbol_98_1 * tint_symbol_83.inner.tint_symbol_73.xyz);
  let x_1613 = tint_symbol_96_3;
  let x_1615 = tint_symbol_83.inner.tint_symbol_64;
  let x_1612 = tint_symbol_60(x_1613, x_1615);
  tint_symbol_96_3 = x_1612;
  let x_1616 = tint_symbol_96_3;
  return x_1616;
}

fn tint_symbol_101(tint_symbol_1_2 : vec3f, tint_symbol_28_8 : vec3f) -> vec2f {
  var tint_symbol_102 = 0.0f;
  var tint_symbol_103 = 0.0f;
  var tint_symbol_104 = 0i;
  tint_symbol_102 = -1.0f;
  tint_symbol_103 = -1.0f;
  tint_symbol_104 = 0i;
  loop {
    if (!((tint_symbol_104 < 6i))) {
      break;
    }
    let x_1640 = tint_symbol_83.inner.tint_symbol_74[tint_symbol_104];
    let x_1641 = tint_symbol_102;
    let x_1636 = tint_symbol_91(tint_symbol_1_2, tint_symbol_28_8, x_1640, x_1641);
    if ((x_1636.y > 0.0f)) {
      tint_symbol_102 = x_1636.x;
      tint_symbol_103 = f32(tint_symbol_104);
    }

    continuing {
      tint_symbol_104 = (tint_symbol_104 + 1i);
    }
  }
  let x_1651 = tint_symbol_102;
  let x_1652 = tint_symbol_103;
  return vec2f(x_1651, x_1652);
}

const x_1674 = vec2f(-0.5f);

const x_1676 = vec2f(1.0f);

const x_1680 = vec4f(0.0f, 0.0f, 0.0f, 1.0f);

fn tint_symbol_106(tint_symbol_103_1 : i32, tint_symbol_107 : vec3f) -> vec4f {
  var tint_return_flag_2 = false;
  var tint_return_value_2 = vec4f();
  switch(tint_symbol_103_1) {
    case 1i: {
      let x_1666 = vec2i(textureDimensions(tint_symbol_90, 0i));
      tint_return_flag_2 = true;
      let x_1671 = tint_ftoi((((tint_symbol_107.xy - x_1674) / x_1676) * vec2f(bitcast<vec2i>(x_1666))));
      tint_return_value_2 = textureLoad(tint_symbol_90, x_1671, 0i);
    }
    default: {
      tint_return_flag_2 = true;
      tint_return_value_2 = x_1680;
    }
  }
  let x_1681 = tint_return_value_2;
  return x_1681;
}

fn tint_symbol_109(tint_symbol_103_2 : i32, tint_symbol_107_1 : vec3f) -> vec4f {
  var tint_return_flag_3 = false;
  var tint_return_value_3 = vec4f();
  var tint_symbol_110 = vec4f();
  switch(tint_symbol_103_2) {
    case 5i: {
      tint_symbol_110 = vec4f(0.65490198135375976562f, 0.65882354974746704102f, 0.6666666865348815918f, 1.0f);
    }
    case 4i: {
      tint_symbol_110 = vec4f(0.85098040103912353516f, 0.85098040103912353516f, 0.83921569585800170898f, 1.0f);
    }
    case 3i: {
      tint_symbol_110 = vec4f(0.34901961684226989746f, 0.79607844352722167969f, 0.90980392694473266602f, 1.0f);
    }
    case 2i: {
      tint_symbol_110 = vec4f(0.0f, 0.50980395078659057617f, 0.72941178083419799805f, 1.0f);
    }
    case 1i: {
      let x_1709 = vec2i(textureDimensions(tint_symbol_88, 0i));
      tint_return_flag_3 = true;
      let x_1713 = tint_ftoi((((tint_symbol_107_1.xy - x_1674) / x_1676) * vec2f(bitcast<vec2i>(x_1709))));
      tint_return_value_3 = textureLoad(tint_symbol_88, x_1713, 0i);
    }
    case 0i: {
      let x_1698 = vec2i(textureDimensions(tint_symbol_86, 0i));
      tint_return_flag_3 = true;
      let x_1702 = tint_ftoi((((tint_symbol_107_1.xy - x_1674) / x_1676) * vec2f(bitcast<vec2i>(x_1698))));
      tint_return_value_3 = textureLoad(tint_symbol_86, x_1702, 0i);
    }
    default: {
      tint_symbol_110 = x_1680;
    }
  }
  if (!(tint_return_flag_3)) {
    tint_return_flag_3 = true;
    tint_return_value_3 = tint_symbol_110;
  }
  let x_1738 = tint_return_value_3;
  return x_1738;
}

fn tint_symbol_113(tint_symbol_103_3 : i32, tint_symbol_107_2 : vec3f) -> vec3f {
  var tint_return_flag_4 = false;
  var tint_return_value_4 = vec3f();
  var x_1769 = vec3f();
  var tint_symbol_115 = vec3f();
  var x_1795 = vec3f();
  var tint_symbol_115_1 = vec3f();
  switch(tint_symbol_103_3) {
    case 5i: {
      tint_return_flag_4 = true;
      tint_return_value_4 = vec3f(0.0f, 1.0f, 0.0f);
    }
    case 4i: {
      tint_return_flag_4 = true;
      tint_return_value_4 = vec3f(0.0f, -1.0f, 0.0f);
    }
    case 3i: {
      tint_return_flag_4 = true;
      tint_return_value_4 = vec3f(-1.0f, 0.0f, 0.0f);
    }
    case 2i: {
      tint_return_flag_4 = true;
      tint_return_value_4 = vec3f(1.0f, 0.0f, 0.0f);
    }
    case 1i: {
      let x_1782 = vec2i(textureDimensions(tint_symbol_89, 0i));
      let x_1787 = tint_ftoi((((tint_symbol_107_2.xy - x_1674) / x_1676) * vec2f(bitcast<vec2i>(x_1782))));
      tint_symbol_115_1 = normalize((textureLoad(tint_symbol_89, x_1787, 0i).xyz - vec3f(0.5f)));
      tint_symbol_115_1.y = (tint_symbol_115_1.y * -1.0f);
      tint_symbol_115_1.x = (tint_symbol_115_1.x * -1.0f);
      tint_return_flag_4 = true;
      tint_return_value_4 = tint_symbol_115_1;
    }
    case 0i: {
      let x_1755 = vec2i(textureDimensions(tint_symbol_87, 0i));
      let x_1760 = tint_ftoi((((tint_symbol_107_2.xy - x_1674) / x_1676) * vec2f(bitcast<vec2i>(x_1755))));
      tint_symbol_115 = normalize((textureLoad(tint_symbol_87, x_1760, 0i).xyz - vec3f(0.5f)));
      tint_symbol_115.z = (tint_symbol_115.z * -1.0f);
      tint_symbol_115.y = (tint_symbol_115.y * -1.0f);
      tint_return_flag_4 = true;
      tint_return_value_4 = tint_symbol_115;
    }
    default: {
      tint_return_flag_4 = true;
      tint_return_value_4 = vec3f();
    }
  }
  let x_1811 = tint_return_value_4;
  return x_1811;
}

fn tint_symbol_119(tint_symbol_120 : vec3f, tint_symbol_121 : vec3f, tint_symbol_122 : vec3f, tint_symbol_123 : vec3f) -> tint_symbol_117 {
  var tint_return_flag_5 = false;
  var tint_return_value_5 = tint_symbol_117(vec4f(), vec3f());
  var tint_symbol_76 = vec4f();
  var tint_symbol_124 = 0.0f;
  var x_1854 = vec4f();
  var tint_symbol_126 = vec3f();
  var tint_symbol_96_4 = tint_symbol_117(vec4f(), vec3f());
  var tint_symbol_76_1 = vec4f();
  var tint_symbol_126_1 = vec3f();
  var tint_symbol_96_5 = tint_symbol_117(vec4f(), vec3f());
  var tint_symbol_76_2 = vec4f();
  var tint_symbol_124_1 = 0.0f;
  var x_1912 = vec4f();
  var tint_symbol_126_2 = vec3f();
  var tint_symbol_96_6 = tint_symbol_117(vec4f(), vec3f());
  let x_1827 = tint_symbol_85.inner.tint_symbol_81.y;
  switch(x_1827) {
    case 2u: {
      let x_1887 = tint_symbol_85.inner.tint_symbol_80[0i];
      let x_1889 = tint_symbol_85.inner.tint_symbol_80.y;
      tint_symbol_76_2 = tint_symbol_85.inner.tint_symbol_76;
      tint_symbol_124_1 = length((tint_symbol_122 - tint_symbol_120));
      tint_symbol_76_2 = (tint_symbol_76_2 / vec4f(((tint_symbol_85.inner.tint_symbol_79[0i] + (tint_symbol_124_1 * tint_symbol_85.inner.tint_symbol_79.y)) + ((tint_symbol_124_1 * tint_symbol_124_1) * tint_symbol_85.inner.tint_symbol_79.z))));
      tint_symbol_126_2 = normalize((tint_symbol_122 - tint_symbol_120));
      let x_1918 = dot(normalize(tint_symbol_121), tint_symbol_126_2);
      if ((x_1918 > cos(x_1887))) {
        tint_symbol_76_2 = (tint_symbol_76_2 * pow(x_1918, x_1889));
        tint_symbol_96_6.tint_symbol_76 = (tint_symbol_76_2 * max(dot(tint_symbol_126_2, -(tint_symbol_123)), 0.0f));
        tint_symbol_96_6.tint_symbol_118 = tint_symbol_126_2;
      }
      tint_return_flag_5 = true;
      tint_return_value_5 = tint_symbol_96_6;
    }
    case 1u: {
      tint_symbol_76_1 = tint_symbol_85.inner.tint_symbol_76;
      tint_symbol_126_1 = normalize(tint_symbol_121);
      tint_symbol_96_5.tint_symbol_76 = (tint_symbol_76_1 * max(dot(tint_symbol_126_1, -(tint_symbol_123)), 0.0f));
      tint_symbol_96_5.tint_symbol_118 = tint_symbol_126_1;
      tint_return_flag_5 = true;
      tint_return_value_5 = tint_symbol_96_5;
    }
    case 0u, default: {
      tint_symbol_76 = tint_symbol_85.inner.tint_symbol_76;
      tint_symbol_124 = length((tint_symbol_122 - tint_symbol_120));
      tint_symbol_76 = (tint_symbol_76 / vec4f(((tint_symbol_85.inner.tint_symbol_79[0i] + (tint_symbol_124 * tint_symbol_85.inner.tint_symbol_79.y)) + ((tint_symbol_124 * tint_symbol_124) * tint_symbol_85.inner.tint_symbol_79.z))));
      tint_symbol_126 = normalize((tint_symbol_122 - tint_symbol_120));
      tint_symbol_96_4.tint_symbol_76 = (tint_symbol_76 * max(dot(tint_symbol_126, -(tint_symbol_123)), 0.0f));
      tint_symbol_96_4.tint_symbol_118 = tint_symbol_126;
      tint_return_flag_5 = true;
      tint_return_value_5 = tint_symbol_96_4;
    }
  }
  let x_1938 = tint_return_value_5;
  return x_1938;
}

fn tint_symbol_129(tint_symbol_110_1 : vec4f, tint_symbol_130 : f32) -> vec4f {
  var x_1947 = vec4f();
  let x_1944 = (1.0f / tint_symbol_130);
  return (round((tint_symbol_110_1 / vec4f(x_1944))) * x_1944);
}

const x_1971 = vec2f(2.0f);

const x_2003 = vec4f(0.0f, 0.21960784494876861572f, 0.39607843756675720215f, 1.0f);

const x_2101 = vec4f(0.10000000149011611938f, 0.10000000149011611938f, 0.10000000149011611938f, 1.0f);

fn tint_symbol_133_inner(tint_symbol_134 : vec3u) {
  var tint_symbol_37_1 = vec3f();
  var tint_symbol_138 = vec3f();
  var tint_symbol_58_2 = vec2f();
  var tint_symbol_110_2 = vec4f();
  var tint_symbol_107_3 = vec3f();
  var tint_symbol_140 = vec4f();
  var tint_symbol_115_2 = vec3f();
  var tint_symbol_141 = tint_symbol_117(vec4f(), vec3f());
  var x_2060 = vec4f();
  var tint_symbol_143 = vec4f();
  var x_2107 = vec4f();
  var tint_symbol_144 = vec4f();
  var x_1967 : bool;
  var x_1968 : bool;
  let x_1955 = bitcast<vec2i>(tint_symbol_134.xy);
  let x_1957 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_84)));
  let x_1962 = (x_1955.x < x_1957.x);
  x_1968 = x_1962;
  if (x_1962) {
    x_1967 = (x_1955.y < x_1957.y);
    x_1968 = x_1967;
  }
  if (x_1968) {
    var x_2080 : bool;
    var x_2081 : bool;
    let x_1976 = (x_1971 / tint_symbol_82.inner.tint_symbol_66.xy);
    tint_symbol_37_1 = vec3f((((f32(x_1955.x) + 0.5f) * x_1976.x) - 1.0f), (((f32(x_1955.y) + 0.5f) * x_1976.y) - 1.0f), 0.0f);
    tint_symbol_138 = vec3f(0.0f, 0.0f, 1.0f);
    let x_1994 = tint_symbol_37_1;
    let x_1993 = tint_symbol_97(x_1994);
    tint_symbol_37_1 = x_1993;
    let x_1996 = tint_symbol_138;
    let x_1995 = tint_symbol_95(x_1996);
    tint_symbol_138 = x_1995;
    let x_1998 = tint_symbol_37_1;
    let x_1999 = tint_symbol_138;
    let x_1997 = tint_symbol_101(x_1998, x_1999);
    tint_symbol_58_2 = x_1997;
    tint_symbol_110_2 = x_2003;
    if ((tint_symbol_58_2.x > 0.0f)) {
      let x_2011 = tint_symbol_85.inner.tint_symbol_77;
      let x_2014 = tint_symbol_85.inner.tint_symbol_78;
      tint_symbol_107_3 = (tint_symbol_37_1 + (tint_symbol_138 * tint_symbol_58_2.x));
      let x_2024 = tint_symbol_107_3;
      let x_2023 = tint_symbol_100(x_2024);
      tint_symbol_107_3 = x_2023;
      let x_2028 = tint_symbol_58_2.y;
      let x_2026 = tint_ftoi_1(x_2028);
      let x_2029 = tint_symbol_107_3;
      let x_2025 = tint_symbol_106(x_2026, x_2029);
      let x_2033 = tint_symbol_58_2.y;
      let x_2031 = tint_ftoi_1(x_2033);
      let x_2034 = tint_symbol_107_3;
      let x_2030 = tint_symbol_109(x_2031, x_2034);
      tint_symbol_140 = x_2030;
      let x_2039 = tint_symbol_58_2.y;
      let x_2037 = tint_ftoi_1(x_2039);
      let x_2040 = tint_symbol_107_3;
      let x_2036 = tint_symbol_113(x_2037, x_2040);
      tint_symbol_115_2 = x_2036;
      let x_2043 = tint_symbol_115_2;
      let x_2042 = tint_symbol_99(x_2043);
      tint_symbol_115_2 = x_2042;
      let x_2045 = tint_symbol_107_3;
      let x_2046 = tint_symbol_115_2;
      let x_2044 = tint_symbol_119(x_2011.xyz, x_2014.xyz, x_2045, x_2046);
      tint_symbol_141 = x_2044;
      tint_symbol_140 = (tint_symbol_140 * ((tint_symbol_141.tint_symbol_76 * dot(tint_symbol_115_2, -(tint_symbol_141.tint_symbol_118))) + vec4f(length(x_2025.xyz))));
      tint_symbol_140 = clamp(tint_symbol_140, vec4f(), x_74);
      if ((tint_symbol_85.inner.tint_symbol_81[0i] == 0u)) {
        tint_symbol_110_2 = (x_2025 + tint_symbol_140);
      }
      let x_2075 = (tint_symbol_85.inner.tint_symbol_81[0i] == 1u);
      x_2081 = x_2075;
      if (x_2075) {
      } else {
        x_2080 = (tint_symbol_85.inner.tint_symbol_81[0i] == 2u);
        x_2081 = x_2080;
      }
      if (x_2081) {
        tint_symbol_143 = ((x_74 * tint_symbol_141.tint_symbol_76) * pow(dot(tint_symbol_138, -(reflect(tint_symbol_141.tint_symbol_118, tint_symbol_115_2))), 100.0f));
        tint_symbol_143 = clamp(tint_symbol_143, vec4f(), x_74);
        tint_symbol_144 = (x_2101 * (tint_symbol_141.tint_symbol_76 + vec4f(length(x_2025.xyz))));
        tint_symbol_144 = clamp(tint_symbol_144, vec4f(), x_74);
        tint_symbol_110_2 = (((x_2025 + tint_symbol_140) + tint_symbol_143) + tint_symbol_144);
        if ((tint_symbol_85.inner.tint_symbol_81[0i] == 2u)) {
          let x_2125 = tint_symbol_110_2;
          let x_2124 = tint_symbol_129(x_2125, 5.0f);
          tint_symbol_110_2 = x_2124;
        }
      }
    }
    let x_2129 = tint_symbol_110_2;
    textureStore(tint_symbol_84, x_1955, x_2129);
  }
  return;
}

fn tint_symbol_133_1() {
  let x_2134 = tint_symbol_134_1;
  tint_symbol_133_inner(x_2134);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeOrthogonalMain(@builtin(global_invocation_id) tint_symbol_134_1_param : vec3u) {
  tint_symbol_134_1 = tint_symbol_134_1_param;
  tint_symbol_133_1();
}

fn tint_symbol_145_inner(tint_symbol_134_3 : vec3u) {
  var tint_symbol_37_2 = vec3f();
  var tint_symbol_138_1 = vec3f();
  var tint_symbol_58_3 = vec2f();
  var tint_symbol_110_3 = vec4f();
  var tint_symbol_107_4 = vec3f();
  var tint_symbol_140_1 = vec4f();
  var tint_symbol_115_3 = vec3f();
  var tint_symbol_141_1 = tint_symbol_117(vec4f(), vec3f());
  var x_2246 = vec4f();
  var tint_symbol_143_1 = vec4f();
  var x_2289 = vec4f();
  var tint_symbol_144_1 = vec4f();
  var x_2150 : bool;
  var x_2151 : bool;
  let x_2138 = bitcast<vec2i>(tint_symbol_134_3.xy);
  let x_2140 = bitcast<vec2i>(vec2i(textureDimensions(tint_symbol_84)));
  let x_2145 = (x_2138.x < x_2140.x);
  x_2151 = x_2145;
  if (x_2145) {
    x_2150 = (x_2138.y < x_2140.y);
    x_2151 = x_2150;
  }
  if (x_2151) {
    var x_2265 : bool;
    var x_2266 : bool;
    let x_2161 = ((x_1971 / tint_symbol_82.inner.tint_symbol_66.xy) * tint_symbol_82.inner.tint_symbol_65.xy);
    tint_symbol_37_2 = vec3f();
    tint_symbol_138_1 = normalize(vec3f((((f32(x_2138.x) + 0.5f) * x_2161.x) - tint_symbol_82.inner.tint_symbol_65.x), (((f32(x_2138.y) + 0.5f) * x_2161.y) - tint_symbol_82.inner.tint_symbol_65.y), 1.0f));
    let x_2183 = tint_symbol_37_2;
    let x_2182 = tint_symbol_97(x_2183);
    tint_symbol_37_2 = x_2182;
    let x_2185 = tint_symbol_138_1;
    let x_2184 = tint_symbol_95(x_2185);
    tint_symbol_138_1 = x_2184;
    let x_2187 = tint_symbol_37_2;
    let x_2188 = tint_symbol_138_1;
    let x_2186 = tint_symbol_101(x_2187, x_2188);
    tint_symbol_58_3 = x_2186;
    tint_symbol_110_3 = x_2003;
    if ((tint_symbol_58_3.x > 0.0f)) {
      let x_2197 = tint_symbol_85.inner.tint_symbol_77;
      let x_2200 = tint_symbol_85.inner.tint_symbol_78;
      tint_symbol_107_4 = (tint_symbol_37_2 + (tint_symbol_138_1 * tint_symbol_58_3.x));
      let x_2210 = tint_symbol_107_4;
      let x_2209 = tint_symbol_100(x_2210);
      tint_symbol_107_4 = x_2209;
      let x_2214 = tint_symbol_58_3.y;
      let x_2212 = tint_ftoi_1(x_2214);
      let x_2215 = tint_symbol_107_4;
      let x_2211 = tint_symbol_106(x_2212, x_2215);
      let x_2219 = tint_symbol_58_3.y;
      let x_2217 = tint_ftoi_1(x_2219);
      let x_2220 = tint_symbol_107_4;
      let x_2216 = tint_symbol_109(x_2217, x_2220);
      tint_symbol_140_1 = x_2216;
      let x_2225 = tint_symbol_58_3.y;
      let x_2223 = tint_ftoi_1(x_2225);
      let x_2226 = tint_symbol_107_4;
      let x_2222 = tint_symbol_113(x_2223, x_2226);
      tint_symbol_115_3 = x_2222;
      let x_2229 = tint_symbol_115_3;
      let x_2228 = tint_symbol_99(x_2229);
      tint_symbol_115_3 = x_2228;
      let x_2231 = tint_symbol_107_4;
      let x_2232 = tint_symbol_115_3;
      let x_2230 = tint_symbol_119(x_2197.xyz, x_2200.xyz, x_2231, x_2232);
      tint_symbol_141_1 = x_2230;
      tint_symbol_140_1 = (tint_symbol_140_1 * ((tint_symbol_141_1.tint_symbol_76 * dot(tint_symbol_115_3, -(tint_symbol_141_1.tint_symbol_118))) + vec4f(length(x_2211.xyz))));
      tint_symbol_140_1 = clamp(tint_symbol_140_1, vec4f(), x_74);
      if ((tint_symbol_85.inner.tint_symbol_81[0i] == 0u)) {
        tint_symbol_110_3 = (x_2211 + tint_symbol_140_1);
      }
      let x_2260 = (tint_symbol_85.inner.tint_symbol_81[0i] == 1u);
      x_2266 = x_2260;
      if (x_2260) {
      } else {
        x_2265 = (tint_symbol_85.inner.tint_symbol_81[0i] == 2u);
        x_2266 = x_2265;
      }
      if (x_2266) {
        tint_symbol_143_1 = ((x_74 * tint_symbol_141_1.tint_symbol_76) * pow(dot(tint_symbol_138_1, -(reflect(tint_symbol_141_1.tint_symbol_118, tint_symbol_115_3))), 100.0f));
        tint_symbol_143_1 = clamp(tint_symbol_143_1, vec4f(), x_74);
        tint_symbol_144_1 = (x_2101 * (tint_symbol_141_1.tint_symbol_76 + vec4f(length(x_2211.xyz))));
        let x_2294 = tint_symbol_144_1;
        let x_2293 = tint_saturate(x_2294);
        tint_symbol_144_1 = x_2293;
        tint_symbol_110_3 = (((x_2211 + tint_symbol_140_1) + tint_symbol_143_1) + tint_symbol_144_1);
        if ((tint_symbol_85.inner.tint_symbol_81[0i] == 2u)) {
          let x_2307 = tint_symbol_110_3;
          let x_2306 = tint_symbol_129(x_2307, 5.0f);
          tint_symbol_110_3 = x_2306;
        }
      }
    }
    let x_2310 = tint_symbol_110_3;
    textureStore(tint_symbol_84, x_2138, x_2310);
  }
  return;
}

fn tint_symbol_145_1() {
  let x_2314 = tint_symbol_134_2;
  tint_symbol_145_inner(x_2314);
  return;
}

@compute @workgroup_size(16i, 16i, 1i)
fn computeProjectiveMain(@builtin(global_invocation_id) tint_symbol_134_2_param : vec3u) {
  tint_symbol_134_2 = tint_symbol_134_2_param;
  tint_symbol_145_1();
}
