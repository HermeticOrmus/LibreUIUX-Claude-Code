# ARM Cortex Microcontrollers

> Firmware and driver development for ARM Cortex-M microcontrollers with safety-critical embedded patterns.

## Overview

This plugin provides deep embedded systems expertise for ARM Cortex-M platforms including Teensy 4.x (i.MX RT1062, Cortex-M7), STM32 (F4/F7/H7), nRF52 (Nordic BLE), and SAMD (Microchip). It delivers complete, compilable firmware and driver modules with emphasis on correctness, determinism, and safety-critical patterns. Use it when writing peripheral drivers, implementing interrupt-driven I/O, working with DMA and cache coherency, or architecting embedded software for any Cortex-M target.

## Contents

### Agents

- **arm-cortex-expert** -- Senior embedded software engineer delivering complete driver modules for ARM Cortex-M platforms. Core competencies include register-level drivers for I2C/SPI/UART/CAN/SDIO, interrupt-driven data pipelines, DMA for high-throughput transfers, and protocol stacks (BLE, USB CDC/MSC/HID, MIDI). Provides critical safety patterns for Cortex-M7 weakly-ordered memory (DMB/DSB barriers for MMIO), DMA cache coherency (32-byte aligned buffers, DTCM placement, cache maintenance), write-1-to-clear register handling, NVIC priority configuration, critical sections with BASEPRI, hardfault debugging, FPU lazy stacking, and stack overflow protection via MPU guard pages. Supports both C/C++ and Rust (with correct atomic patterns -- never uses `static mut`).

## Usage

```bash
claude plugin install arm-cortex-microcontrollers
```

Example interactions:

```
@arm-cortex-expert Write a non-blocking SPI driver for an accelerometer on Teensy 4.x with DMA transfers
@arm-cortex-expert Implement a USB CDC serial driver for STM32H7 with ring buffer and interrupt-driven I/O
@arm-cortex-expert Design a BLE peripheral driver for nRF52840 with connection parameter negotiation
```

The agent follows a structured workflow: clarify requirements (platform, peripheral, speed, packet size), design driver skeleton, implement core with ISR handlers and buffer logic, validate with example usage and timing notes, then optimize with DMA and interrupt priorities.

## Key Safety Patterns

The agent embeds deep knowledge of ARM Cortex-M safety-critical concerns that are easy to get wrong:

- **Memory barriers for MMIO** -- Cortex-M7 has weakly-ordered memory. Without `__DMB()` before reads and `__DSB()` after writes, register operations may be reordered, causing intermittent failures that "work with debug prints but fail without them." The agent wraps all register access with proper barriers.
- **DMA and cache coherency** -- All DMA buffers must be 32-byte aligned (cache line size) with sizes that are multiples of 32 bytes. Violating alignment corrupts adjacent memory during cache invalidation. The agent prefers DTCM/SRAM placement (non-cacheable) over cache maintenance.
- **Interrupt priorities** -- Lower number equals higher priority. The agent reserves priorities 0-2 for time-critical operations (DMA, timers), 3-7 for normal peripherals, and 8+ for background tasks. Uses BASEPRI over PRIMASK when possible to allow high-priority ISRs during critical sections.
- **Platform gotchas** -- Teensy 4.x FlexSPI is dedicated to Flash/PSRAM only; STM32 F7/H7 has fixed DMA stream/channel assignments; nRF52 SAADC needs calibration after power-on; SAMD SERCOM needs careful pin muxing.
- **Cortex-M architecture differences** -- The agent adapts its approach based on the target: M0/M0+ has limited fault information and no cache, while M4F/M7F adds FPU with lazy stacking and full fault registers.
- **Rust safety** -- For Rust targets, the agent never uses `static mut` (undefined behavior due to data races) and instead uses `AtomicBool`, `Mutex<RefCell<Option<T>>>`, and `critical_section::with()`.

## Related Plugins

- **backend-development** -- For systems where embedded devices communicate with backend services via REST or message queues.
- **application-performance** -- Performance engineering patterns apply to embedded system optimization (profiling, bottleneck analysis).
- **api-scaffolding** -- When the microcontroller interfaces with a cloud API, the backend-architect agent designs the server side.
