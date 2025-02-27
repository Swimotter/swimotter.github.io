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
  tint_symbol_1 : vec2f,
}

alias RTArr = array<tint_symbol>;

struct tint_symbol_2_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_4_block {
  /* @offset(0) */
  inner : vec2f,
}

alias Arr = array<u32, 2u>;

struct tint_symbol_5_block_atomic {
  /* @offset(0) */
  inner : array<atomic<u32>, 2u>,
}

struct tint_symbol_5_block {
  /* @offset(0) */
  inner : Arr,
}

var<private> tint_symbol_7_1 : u32;

var<private> tint_symbol_8_1 : u32;

var<private> value = vec4f();

var<private> value_1 = vec4f();

var<private> tint_symbol_12_1 : vec3u;

@group(0) @binding(0) var<storage> tint_symbol_2 : tint_symbol_2_block;

@group(0) @binding(1) var<storage, read_write> tint_symbol_3 : tint_symbol_2_block;

@group(0) @binding(2) var<uniform> tint_symbol_4 : tint_symbol_4_block;

@group(0) @binding(3) var<storage, read_write> tint_symbol_5 : tint_symbol_5_block_atomic;

fn tint_symbol_6_inner(tint_symbol_7 : u32, tint_symbol_8 : u32) -> vec4f {
  let x_41 = tint_symbol_2.inner[(tint_symbol_7 + tint_symbol_8)].tint_symbol_1;
  return vec4f(x_41.x, x_41.y, 0.0f, 1.0f);
}

fn tint_symbol_6_1() {
  let x_51 = tint_symbol_7_1;
  let x_52 = tint_symbol_8_1;
  let x_50 = tint_symbol_6_inner(x_51, x_52);
  value = x_50;
  return;
}

struct tint_symbol_6_out {
  @builtin(position)
  value_2 : vec4f,
}

@vertex
fn vertexMain(@builtin(instance_index) tint_symbol_7_1_param : u32, @builtin(vertex_index) tint_symbol_8_1_param : u32) -> tint_symbol_6_out {
  tint_symbol_7_1 = tint_symbol_7_1_param;
  tint_symbol_8_1 = tint_symbol_8_1_param;
  tint_symbol_6_1();
  return tint_symbol_6_out(value);
}

fn tint_symbol_10_inner() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_10_1() {
  let x_62 = tint_symbol_10_inner();
  value_1 = x_62;
  return;
}

struct tint_symbol_10_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_10_out {
  tint_symbol_10_1();
  return tint_symbol_10_out(value_1);
}

fn tint_symbol_15(tint_symbol_16 : vec2f, tint_symbol_17 : vec2f, tint_symbol_1 : vec2f) -> bool {
  return ((((tint_symbol_17.x - tint_symbol_16.x) * (tint_symbol_1.y - tint_symbol_16.y)) - ((tint_symbol_17.y - tint_symbol_16.y) * (tint_symbol_1.x - tint_symbol_16.x))) > 0.0f);
}

fn tint_symbol_11_inner(tint_symbol_12 : vec3u) {
  var x_93 : u32;
  var x_95 : u32;
  var x_120 : bool;
  var x_121 : bool;
  x_93 = tint_symbol_12.x;
  x_95 = (x_93 + 1u);
  if ((x_95 < arrayLength(&(tint_symbol_2.inner)))) {
    let x_110 = (min(tint_symbol_2.inner[x_93].tint_symbol_1.x, tint_symbol_2.inner[x_95].tint_symbol_1.x) < tint_symbol_4.inner.x);
    x_121 = x_110;
    if (x_110) {
      x_120 = (tint_symbol_4.inner.x < max(tint_symbol_2.inner[x_93].tint_symbol_1.x, tint_symbol_2.inner[x_95].tint_symbol_1.x));
      x_121 = x_120;
    }
    if (x_121) {
      if ((min(tint_symbol_2.inner[x_93].tint_symbol_1.y, tint_symbol_2.inner[x_95].tint_symbol_1.y) < tint_symbol_4.inner.y)) {
        let x_137 = tint_symbol_2.inner[x_93].tint_symbol_1;
        let x_139 = tint_symbol_2.inner[x_95].tint_symbol_1;
        let x_142 = tint_symbol_4.inner;
        let x_135 = tint_symbol_15(x_137, x_139, x_142);
        if (x_135) {
          let x_146 = atomicAdd(&(tint_symbol_5.inner[0i]), 1u);
        } else {
          let x_150 = atomicSub(&(tint_symbol_5.inner[0i]), 1u);
        }
      } else {
        if ((max(tint_symbol_2.inner[x_93].tint_symbol_1.y, tint_symbol_2.inner[x_95].tint_symbol_1.y) > tint_symbol_4.inner.y)) {
          let x_165 = tint_symbol_2.inner[x_93].tint_symbol_1;
          let x_167 = tint_symbol_2.inner[x_95].tint_symbol_1;
          let x_169 = tint_symbol_4.inner;
          let x_163 = tint_symbol_15(x_165, x_167, x_169);
          if (x_163) {
            let x_173 = atomicAdd(&(tint_symbol_5.inner[1i]), 1u);
          } else {
            let x_176 = atomicSub(&(tint_symbol_5.inner[1i]), 1u);
          }
        }
      }
    }
    tint_symbol_3.inner[x_93] = tint_symbol_2.inner[x_93];
  }
  return;
}

fn tint_symbol_11_1() {
  let x_186 = tint_symbol_12_1;
  tint_symbol_11_inner(x_186);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_12_1_param : vec3u) {
  tint_symbol_12_1 = tint_symbol_12_1_param;
  tint_symbol_11_1();
}
