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
}

struct tint_symbol_5 {
  /* @offset(0) */
  tint_symbol_6 : tint_symbol,
  /* @offset(16) */
  tint_symbol_7 : vec2f,
}

struct tint_symbol_17_block {
  /* @offset(0) */
  inner : tint_symbol_5,
}

var<private> tint_symbol_19_1 : vec2f;

var<private> value = vec4f();

var<private> value_1 = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol_17 : tint_symbol_17_block;

fn tint_symbol_8(tint_symbol_9 : tint_symbol, tint_symbol_10 : tint_symbol) -> tint_symbol {
  return tint_symbol(((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_1) - (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_2)), ((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_2) + (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_1)), ((((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_3) + (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_4)) + (tint_symbol_9.tint_symbol_3 * tint_symbol_10.tint_symbol_1)) - (tint_symbol_9.tint_symbol_4 * tint_symbol_10.tint_symbol_2)), ((((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_4) - (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_3)) + (tint_symbol_9.tint_symbol_3 * tint_symbol_10.tint_symbol_2)) + (tint_symbol_9.tint_symbol_4 * tint_symbol_10.tint_symbol_1)));
}

fn tint_symbol_11(tint_symbol_9_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_9_1.tint_symbol_1, -(tint_symbol_9_1.tint_symbol_2), -(tint_symbol_9_1.tint_symbol_3), -(tint_symbol_9_1.tint_symbol_4));
}

fn tint_symbol_12(tint_symbol_13 : tint_symbol, tint_symbol_14 : tint_symbol) -> tint_symbol {
  let x_84 = tint_symbol_11(tint_symbol_14);
  let x_85 = tint_symbol_8(tint_symbol_13, x_84);
  let x_86 = tint_symbol_8(tint_symbol_14, x_85);
  return x_86;
}

fn tint_symbol_15(tint_symbol_13_1 : vec2f, tint_symbol_14_1 : tint_symbol) -> vec2f {
  let x_92 = tint_symbol_12(tint_symbol(0.0f, 1.0f, tint_symbol_13_1.x, tint_symbol_13_1.y), tint_symbol_14_1);
  return vec2f((x_92.tint_symbol_3 / x_92.tint_symbol_2), (x_92.tint_symbol_4 / x_92.tint_symbol_2));
}

fn tint_symbol_18_inner(tint_symbol_19 : vec2f) -> vec4f {
  let x_116 = tint_symbol_17.inner.tint_symbol_6;
  let x_111 = tint_symbol_11(x_116);
  let x_117 = tint_symbol_15(tint_symbol_19, x_111);
  let x_122 = (x_117 * tint_symbol_17.inner.tint_symbol_7);
  return vec4f(x_122.x, x_122.y, 0.0f, 1.0f);
}

fn tint_symbol_18_1() {
  let x_131 = tint_symbol_19_1;
  let x_130 = tint_symbol_18_inner(x_131);
  value = x_130;
  return;
}

struct tint_symbol_18_out {
  @builtin(position)
  value_2 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_19_1_param : vec2f) -> tint_symbol_18_out {
  tint_symbol_19_1 = tint_symbol_19_1_param;
  tint_symbol_18_1();
  return tint_symbol_18_out(value);
}

fn tint_symbol_22_inner() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_22_1() {
  let x_141 = tint_symbol_22_inner();
  value_1 = x_141;
  return;
}

struct tint_symbol_22_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_22_out {
  tint_symbol_22_1();
  return tint_symbol_22_out(value_1);
}
