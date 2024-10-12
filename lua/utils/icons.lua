local icons = {
  debug = "󰃤",
  markdown = "",
  toggle = " ",
  terminal = "",
  cpp = "",
  vsplit = "",
  hsplit = "",
  save = "󰆓",
  replace = "",
  trash = "󰆴",
  window = "",
  abc_sp = "  ",
  abc = "",
  array_sp = "  ",
  array = "",
  arrowReturn_sp = "  ",
  arrowReturn = "",
  bigCircle_sp = "  ",
  bigCircle = "",
  bigUnfilledCircle_sp = "  ",
  bigUnfilledCircle = "",
  bomb_sp = "  ",
  bomb = "",
  bookMark_sp = "  ",
  bookMark = "",
  boolean_sp = "  ",
  boolean = "",
  box_sp = " 󰅫 ",
  box = "󰅫",
  buffer_sp = "  ",
  buffer = "",
  bug_sp = "  ",
  bug = "",
  calculator_sp = "  ",
  calculator = "",
  calendar_sp = "  ",
  calendar = "",
  caretRight_sp = "  ",
  caretRight = "",
  caretLeft = "",
  checkSquare_sp = "  ",
  checkSquare = "",
  exit_sp = " 󰗼 ",
  exit = "󰗼",
  chevronRight_sp = "  ",
  chevronRight = "",
  circle_sp = "  ",
  circle = "",
  class_sp = "  ",
  class = "",
  close_sp = "  ",
  close = "",
  code_sp = "  ",
  code = "",
  cog_sp = "  ",
  cog = "",
  cogs_sp = "  ",
  cogs = "",
  color_sp = "  ",
  color = "",
  comment_sp = "  ",
  comment = "",
  constant_sp = "  ",
  constant = "",
  constructor_sp = "  ",
  constructor = "",
  container_sp = "  ",
  container = "",
  console_sp = " 󰞷 ",
  console = "󰞷",
  consoleDebug_sp = "  ",
  consoleDebug = "",
  cubeTree_sp = "  ",
  cubeTree = "",
  dashboard_sp = "  ",
  dashboard = "",
  database_sp = "  ",
  database = "",
  enum_sp = "  ",
  enum = "",
  enumMember_sp = "  ",
  enumMember = "",
  error_sp = "  ",
  error = "",
  errorOutline_sp = "  ",
  errorOutline = "",
  errorSlash_sp = " ﰸ ",
  errorSlash = "ﰸ",
  event_sp = "  ",
  event = "",
  field_sp = "  ",
  field = "",
  file_sp = "  ",
  file = "",
  fileBg_sp = "  ",
  fileBg = "",
  fileCopy_sp = "  ",
  fileCopy = "",
  fileCutCorner_sp = "  ",
  fileCutCorner = "",
  fileNoBg_sp = "  ",
  fileNoBg = "",
  fileNoLines_sp = "  ",
  fileNoLines = "",
  fileNoLinesBg_sp = "  ",
  fileNoLinesBg = "",
  fileRecent_sp = "  ",
  fileRecent = "",
  fire_sp = "  ",
  fire = "",
  folder_sp = "  ",
  folder = "",
  folderNoBg_sp = "  ",
  folderNoBg = "",
  folderOpen_sp = "  ",
  folderOpen = "",
  folderOpen2_sp = " 󰉖 ",
  folderOpen2 = "󰉖",
  folderOpenNoBg_sp = "  ",
  folderOpenNoBg = "",
  forbidden_sp = " 󰍛 ",
  forbidden = "󰍛",
  func_sp = "  ",
  func = "",
  gear_sp = "  ",
  gear = "",
  gears_sp = "  ",
  gears = "",
  git_sp = "  ",
  git = "",
  gitAdd_sp = "  ",
  gitAdd = "",
  gitChange_sp = "  ",
  gitChange = "",
  gitRemove_sp = "  ",
  gitRemove = "",
  gitUnmerged_sp = "  ",
  gitUnmerged = "",
  gitRenamed_sp = " ➜ ",
  gitRenamed = "➜",
  gitDeleted_sp = "  ",
  gitDeleted = "",
  gitIgnored_sp = " ◌ ",
  gitIgnored = "◌",
  hexCutOut_sp = "  ",
  hexCutOut = "",
  history_sp = "  ",
  history = "",
  hook_sp = " ﯠ ",
  hook = "ﯠ",
  info_sp = "  ",
  info = "",
  infoOutline_sp = "  ",
  infoOutline = "",
  interface_sp = "  ",
  interface = "",
  key_sp = "  ",
  key = "",
  keyword_sp = "  ",
  keyword = "",
  light_sp = "  ",
  light = "",
  lightbulb_sp = "  ",
  lightbulb = "",
  lightbulbOutline_sp = "  ",
  lightbulbOutline = "",
  list_sp = "  ",
  list = "",
  lock_sp = "  ",
  lock = "",
  m_sp = " m ",
  m = "m",
  method_sp = "  ",
  method = "",
  module_sp = "  ",
  module = "",
  newFile_sp = "  ",
  newFile = "",
  note_sp = " 󰎚 ",
  note = "󰎚",
  number_sp = "  ",
  number = "",
  numbers_sp = "  ",
  numbers = "",
  object_sp = "  ",
  object = "",
  operator_sp = "  ",
  operator = "",
  package_sp = " 󰏓 ",
  package = "󰏓",
  packageUp_sp = " 󰏕 ",
  packageUp = "󰏕",
  packageDown_sp = " 󰏔 ",
  packageDown = "󰏔",
  paint_sp = "  ",
  paint = "",
  paragraph_sp = " 󰉢 ",
  paragraph = "󰉢",
  pencil_sp = "  ",
  pencil = "",
  pie_sp = "  ",
  pie = "",
  pin_sp = " 󰐃 ",
  pin = "󰐃",
  project_sp = "  ",
  project = "",
  property_sp = "  ",
  property = "",
  questionCircle_sp = "  ",
  questionCircle = "",
  reference_sp = "  ",
  reference = "",
  ribbon_sp = " 󰑠 ",
  ribbon = "󰑠",
  ring_sp = "  ",
  ring = "",
  robot_sp = " 󰚩 ",
  robot = "󰚩",
  ruler_sp = " 塞 ",
  ruler = "塞",
  scissors_sp = "  ",
  scissors = "",
  scope_sp = "  ",
  scope = "",
  search_sp = "  ",
  search = "",
  settings_sp = "  ",
  settings = "",
  snippets_sp = "  ",
  snippets = "",
  string_sp = "  ",
  string = "",
  structure_sp = " 󰆸 ",
  structure = "󰆸",
  switch_sp = "  ",
  switch = "",
  tag_sp = "  ",
  tag = "",
  telescope_sp = "  ",
  telescope = "",
  text_sp = "  ",
  text = "",
  textSize_sp = "  ",
  textSize = "",
  tree_sp = "  ",
  tree = "",
  treeDiagram_sp = "  ",
  treeDiagram = "",
  typeParameter_sp = " 󰆩 ",
  typeParameter = "󰆩",
  unit_sp = "  ",
  unit = "",
  upCircle_sp = " 󰁝 ",
  upCircle = "󰁝",
  variable_sp = "  ",
  variable = "",
  warning_sp = "  ",
  warning = "",
  warningTriangle_sp = " 󰀪 ",
  warningTriangle = "󰀪",
  watch_sp = "  ",
  watch = "",
  wrench_sp = "  ",
  wrench = "",
  yen_sp = "  ",
  yen = "",
  yaml_sp = " 󰈶 ",
  yaml = "󰈶",
  zap_sp = " 󰂚 ",
  zap = "󰂚",
  vim = "",
  vim_sp = "  ",
}

return icons
