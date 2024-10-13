-- ╔══════════════════════════════════════════════════════════════╗
--   File: config/debugging/dap.lua
--   Configuration for dap
-- ╚══════════════════════════════════════════════════════════════╝

local dap = require "dap"

local lldb = require "config.debugging.adapters.lldb"

dap.adapters.lldb = lldb.adapter

dap.configurations.c = lldb.config
dap.configurations.cpp = lldb.config
dap.configurations.rust = lldb.config
