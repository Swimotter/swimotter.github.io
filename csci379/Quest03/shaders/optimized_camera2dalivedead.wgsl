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

alias RTArr = array<u32>;

struct tint_symbol_18_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_20_block {
  /* @offset(0) */
  inner : i32,
}

struct tint_symbol_21_block {
  /* @offset(0) */
  inner : u32,
}

struct tint_symbol_23 {
  /* @offset(0) */
  tint_symbol_24 : vec4f,
  /* @offset(16) */
  tint_symbol_25 : f32,
}

var<private> tint_symbol_24_1 : vec2f;

var<private> tint_symbol_27_1 : u32;

var<private> tint_symbol_24_2 = vec4f();

var<private> tint_symbol_25_1 = 0.0f;

var<private> tint_symbol_25_2 : f32;

var<private> value = vec4f();

var<private> tint_symbol_33_1 : vec3u;

var<private> tint_symbol_33_2 : vec3u;

var<private> tint_symbol_33_3 : vec3u;

@group(0) @binding(0) var<uniform> tint_symbol_17 : tint_symbol_17_block;

@group(0) @binding(1) var<storage> tint_symbol_18 : tint_symbol_18_block;

@group(0) @binding(2) var<storage, read_write> tint_symbol_19 : tint_symbol_18_block;

@group(0) @binding(3) var<uniform> tint_symbol_20 : tint_symbol_20_block;

@group(0) @binding(4) var<uniform> tint_symbol_21 : tint_symbol_21_block;

fn tint_symbol_8(tint_symbol_9 : tint_symbol, tint_symbol_10 : tint_symbol) -> tint_symbol {
  return tint_symbol(((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_1) - (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_2)), ((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_2) + (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_1)), ((((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_3) + (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_4)) + (tint_symbol_9.tint_symbol_3 * tint_symbol_10.tint_symbol_1)) - (tint_symbol_9.tint_symbol_4 * tint_symbol_10.tint_symbol_2)), ((((tint_symbol_9.tint_symbol_1 * tint_symbol_10.tint_symbol_4) - (tint_symbol_9.tint_symbol_2 * tint_symbol_10.tint_symbol_3)) + (tint_symbol_9.tint_symbol_3 * tint_symbol_10.tint_symbol_2)) + (tint_symbol_9.tint_symbol_4 * tint_symbol_10.tint_symbol_1)));
}

fn tint_symbol_11(tint_symbol_9_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_9_1.tint_symbol_1, -(tint_symbol_9_1.tint_symbol_2), -(tint_symbol_9_1.tint_symbol_3), -(tint_symbol_9_1.tint_symbol_4));
}

fn tint_symbol_12(tint_symbol_13 : tint_symbol, tint_symbol_14 : tint_symbol) -> tint_symbol {
  let x_107 = tint_symbol_11(tint_symbol_14);
  let x_108 = tint_symbol_8(tint_symbol_13, x_107);
  let x_109 = tint_symbol_8(tint_symbol_14, x_108);
  return x_109;
}

fn tint_symbol_15(tint_symbol_13_1 : vec2f, tint_symbol_14_1 : tint_symbol) -> vec2f {
  let x_115 = tint_symbol_12(tint_symbol(0.0f, 1.0f, tint_symbol_13_1.x, tint_symbol_13_1.y), tint_symbol_14_1);
  return vec2f((x_115.tint_symbol_3 / x_115.tint_symbol_2), (x_115.tint_symbol_4 / x_115.tint_symbol_2));
}

fn tint_mod(lhs : u32, rhs : u32) -> u32 {
  return (lhs % select(rhs, 1u, (rhs == 0u)));
}

fn tint_div(lhs_1 : u32, rhs_1 : u32) -> u32 {
  return (lhs_1 / select(rhs_1, 1u, (rhs_1 == 0u)));
}

fn tint_symbol_26_inner(tint_symbol_24 : vec2f, tint_symbol_27 : u32) -> tint_symbol_23 {
  var x_161 = vec2f();
  var x_167 = vec2f();
  var x_172 = vec2f();
  var x_178 = vec2f();
  var tint_symbol_37 = tint_symbol_23(vec4f(), 0.0f);
  let x_153 = tint_mod(tint_symbol_27, 2048u);
  let x_155 = tint_div(tint_symbol_27, 2048u);
  let x_165 = (1.0f * 1.0f);
  let x_169 = -(1.0f);
  let x_176 = ((x_165 / 2048.0f) * 0.5f);
  let x_185 = tint_symbol_17.inner.tint_symbol_6;
  let x_181 = tint_symbol_11(x_185);
  let x_186 = tint_symbol_15(((tint_symbol_24 / vec2f(2048.0f)) + ((vec2f(x_169) + ((vec2f(f32(x_153), f32(x_155)) / vec2f(2048.0f)) * x_165)) + vec2f(x_176))), x_181);
  let x_190 = (x_186 * tint_symbol_17.inner.tint_symbol_7);
  tint_symbol_37.tint_symbol_24 = vec4f(x_190.x, x_190.y, 0.0f, 1.0f);
  tint_symbol_37.tint_symbol_25 = f32(tint_symbol_18.inner[tint_symbol_27]);
  let x_205 = tint_symbol_37;
  return x_205;
}

fn tint_symbol_26_1() {
  let x_211 = tint_symbol_24_1;
  let x_212 = tint_symbol_27_1;
  let x_210 = tint_symbol_26_inner(x_211, x_212);
  tint_symbol_24_2 = x_210.tint_symbol_24;
  tint_symbol_25_1 = x_210.tint_symbol_25;
  return;
}

struct tint_symbol_26_out {
  @builtin(position)
  tint_symbol_24_2_1 : vec4f,
  @location(0)
  tint_symbol_25_1_1 : f32,
}

@vertex
fn vertexMain(@location(0) tint_symbol_24_1_param : vec2f, @builtin(instance_index) tint_symbol_27_1_param : u32) -> tint_symbol_26_out {
  tint_symbol_24_1 = tint_symbol_24_1_param;
  tint_symbol_27_1 = tint_symbol_27_1_param;
  tint_symbol_26_1();
  return tint_symbol_26_out(tint_symbol_24_2, tint_symbol_25_1);
}

fn tint_symbol_38_inner(tint_symbol_25 : f32) -> vec4f {
  if ((tint_symbol_25 == 0.0f)) {
    return vec4f(0.0f, 0.0f, 0.0f, 1.0f);
  } else {
    if ((tint_symbol_25 == 1.0f)) {
      return vec4f(1.0f);
    } else {
      if ((tint_symbol_25 == 3.0f)) {
        return vec4f(0.0f, 1.0f, 0.0f, 1.0f);
      } else {
        if ((tint_symbol_25 == 2.0f)) {
          return vec4f(0.20000000298023223877f, 0.20000000298023223877f, 0.20000000298023223877f, 1.0f);
        } else {
          return vec4f();
        }
      }
    }
  }
}

fn tint_symbol_38_1() {
  let x_245 = tint_symbol_25_2;
  let x_244 = tint_symbol_38_inner(x_245);
  value = x_244;
  return;
}

struct tint_symbol_38_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_25_2_param : f32) -> tint_symbol_38_out {
  tint_symbol_25_2 = tint_symbol_25_2_param;
  tint_symbol_38_1();
  return tint_symbol_38_out(value);
}

fn tint_symbol_39_inner(tint_symbol_33 : vec3u) {
  let x_250 = tint_symbol_33.x;
  let x_251 = tint_symbol_33.y;
  let x_253 = ((x_251 * 2048u) + x_250);
  let x_256 = tint_symbol_18.inner[x_253];
  let x_254 = tint_div(x_256, 2u);
  if ((x_254 == 1u)) {
    tint_symbol_19.inner[x_253] = tint_symbol_18.inner[x_253];
    return;
  }
  if ((bitcast<i32>(x_253) == tint_symbol_20.inner)) {
    tint_symbol_19.inner[x_253] = (tint_symbol_18.inner[x_253] ^ 1u);
    return;
  }
  if ((tint_symbol_21.inner == 1u)) {
    tint_symbol_19.inner[x_253] = tint_symbol_18.inner[x_253];
    return;
  }
  let x_289 = tint_symbol_18.inner[((x_251 * 2048u) + (x_250 + 1u))];
  let x_284 = tint_mod(x_289, 2u);
  let x_295 = tint_symbol_18.inner[((x_251 * 2048u) + (x_250 - 1u))];
  let x_290 = tint_mod(x_295, 2u);
  let x_302 = tint_symbol_18.inner[(((x_251 + 1u) * 2048u) + x_250)];
  let x_297 = tint_mod(x_302, 2u);
  let x_309 = tint_symbol_18.inner[(((x_251 - 1u) * 2048u) + x_250)];
  let x_304 = tint_mod(x_309, 2u);
  let x_311 = tint_mod((x_253 + (((x_284 + x_290) + x_297) + x_304)), 2u);
  if ((x_311 == 1u)) {
    tint_symbol_19.inner[x_253] = 1u;
  } else {
    tint_symbol_19.inner[x_253] = 0u;
  }
  return;
}

fn tint_symbol_39_1() {
  let x_322 = tint_symbol_33_1;
  tint_symbol_39_inner(x_322);
  return;
}

@compute @workgroup_size(4i, 4i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_33_1_param : vec3u) {
  tint_symbol_33_1 = tint_symbol_33_1_param;
  tint_symbol_39_1();
}

fn tint_symbol_44_inner(tint_symbol_33_4 : vec3u) {
  let x_326 = tint_symbol_33_4.x;
  let x_327 = tint_symbol_33_4.y;
  let x_329 = ((x_327 * 2048u) + x_326);
  let x_332 = tint_symbol_18.inner[x_329];
  let x_330 = tint_div(x_332, 2u);
  if ((x_330 == 1u)) {
    tint_symbol_19.inner[x_329] = tint_symbol_18.inner[x_329];
    return;
  }
  if ((bitcast<i32>(x_329) == tint_symbol_20.inner)) {
    tint_symbol_19.inner[x_329] = (tint_symbol_18.inner[x_329] ^ 1u);
    return;
  }
  if ((tint_symbol_21.inner == 1u)) {
    tint_symbol_19.inner[x_329] = tint_symbol_18.inner[x_329];
    return;
  }
  var x_415 : u32;
  let x_363 = tint_symbol_18.inner[(((x_327 + 1u) * 2048u) + (x_326 - 1u))];
  let x_357 = tint_mod(x_363, 2u);
  let x_369 = tint_symbol_18.inner[(((x_327 + 1u) * 2048u) + x_326)];
  let x_364 = tint_mod(x_369, 2u);
  let x_377 = tint_symbol_18.inner[(((x_327 + 1u) * 2048u) + (x_326 + 1u))];
  let x_371 = tint_mod(x_377, 2u);
  let x_384 = tint_symbol_18.inner[((x_327 * 2048u) + (x_326 - 1u))];
  let x_379 = tint_mod(x_384, 2u);
  let x_391 = tint_symbol_18.inner[((x_327 * 2048u) + (x_326 + 1u))];
  let x_386 = tint_mod(x_391, 2u);
  let x_399 = tint_symbol_18.inner[(((x_327 - 1u) * 2048u) + (x_326 - 1u))];
  let x_393 = tint_mod(x_399, 2u);
  let x_406 = tint_symbol_18.inner[(((x_327 - 1u) * 2048u) + x_326)];
  let x_401 = tint_mod(x_406, 2u);
  let x_414 = tint_symbol_18.inner[(((x_327 - 1u) * 2048u) + (x_326 + 1u))];
  let x_408 = tint_mod(x_414, 2u);
  x_415 = (((((((x_357 + x_364) + x_371) + x_379) + x_386) + x_393) + x_401) + x_408);
  if ((x_415 < 2u)) {
    tint_symbol_19.inner[x_329] = 0u;
  } else {
    if ((x_415 > 3u)) {
      tint_symbol_19.inner[x_329] = 0u;
    } else {
      if ((x_415 == 3u)) {
        tint_symbol_19.inner[x_329] = 1u;
      } else {
        if ((x_415 == 2u)) {
          tint_symbol_19.inner[x_329] = tint_symbol_18.inner[x_329];
        }
      }
    }
  }
  return;
}

fn tint_symbol_44_1() {
  let x_441 = tint_symbol_33_2;
  tint_symbol_44_inner(x_441);
  return;
}

@compute @workgroup_size(4i, 4i, 1i)
fn computeLife(@builtin(global_invocation_id) tint_symbol_33_2_param : vec3u) {
  tint_symbol_33_2 = tint_symbol_33_2_param;
  tint_symbol_44_1();
}

fn tint_symbol_45_inner(tint_symbol_33_5 : vec3u) {
  let x_445 = tint_symbol_33_5.x;
  let x_446 = tint_symbol_33_5.y;
  let x_448 = ((x_446 * 2048u) + x_445);
  let x_451 = tint_symbol_18.inner[x_448];
  let x_449 = tint_div(x_451, 2u);
  if ((x_449 == 1u)) {
    tint_symbol_19.inner[x_448] = tint_symbol_18.inner[x_448];
    return;
  }
  if ((bitcast<i32>(x_448) == tint_symbol_20.inner)) {
    tint_symbol_19.inner[x_448] = (tint_symbol_18.inner[x_448] ^ 1u);
    return;
  }
  if ((tint_symbol_21.inner == 1u)) {
    tint_symbol_19.inner[x_448] = tint_symbol_18.inner[x_448];
    return;
  }
  var x_511 : u32;
  let x_482 = tint_symbol_18.inner[(((x_446 + 1u) * 2048u) + (x_445 - 1u))];
  let x_476 = tint_mod(x_482, 2u);
  let x_488 = tint_symbol_18.inner[(((x_446 + 1u) * 2048u) + x_445)];
  let x_483 = tint_mod(x_488, 2u);
  let x_495 = tint_symbol_18.inner[((x_446 * 2048u) + (x_445 - 1u))];
  let x_490 = tint_mod(x_495, 2u);
  let x_503 = tint_symbol_18.inner[(((x_446 - 1u) * 2048u) + (x_445 - 1u))];
  let x_497 = tint_mod(x_503, 2u);
  let x_510 = tint_symbol_18.inner[(((x_446 - 1u) * 2048u) + x_445)];
  let x_505 = tint_mod(x_510, 2u);
  x_511 = ((((x_476 + x_483) + x_490) + x_497) + x_505);
  if ((x_511 < 2u)) {
    tint_symbol_19.inner[x_448] = 0u;
  } else {
    if ((x_511 > 4u)) {
      tint_symbol_19.inner[x_448] = 0u;
    } else {
      if ((x_511 == 2u)) {
        tint_symbol_19.inner[x_448] = tint_symbol_18.inner[x_448];
      } else {
        if ((x_511 == 3u)) {
          tint_symbol_19.inner[x_448] = 1u;
        }
      }
    }
  }
  return;
}

fn tint_symbol_45_1() {
  let x_537 = tint_symbol_33_3;
  tint_symbol_45_inner(x_537);
  return;
}

@compute @workgroup_size(4i, 4i, 1i)
fn computeFun(@builtin(global_invocation_id) tint_symbol_33_3_param : vec3u) {
  tint_symbol_33_3 = tint_symbol_33_3_param;
  tint_symbol_45_1();
}
