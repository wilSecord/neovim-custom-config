local org = require('orgmode')

org.setup({
  org_agenda_files = '~/orgfiles/**/*',
  org_default_notes_file = '~/orgfiles/refile.org',
  org_capture_templates = {
      n = {
          description = "Note",
          template = "%n \n** %?"
      }, 
      t = {
          description = "Todo",
          template = "* TODO []  ::\n    %^t"
      }, 
      e = {
          description = "Event",
          subtemplates = {
              r = {
                  description = 'recurring',
                  template = '** %?\n    %^T',
                  target = '~/org/calendar.org',
                  headline = 'recurring'
              },
              o = {
                  description = 'one-time',
                  template = '** %?\n    %^T',
                  target = '~/org/calendar.org',
                  headline = 'one-time'
              }
          }
      }
  },
  org_todo_keywords = {
      'TODO(t)', '|', 'DONE(d)', 'NEXT(n)'
  }
})

-- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
-- add ~org~ to ignore_install
-- require('nvim-treesitter.configs').setup({
--   ensure_installed = 'all',
--   ignore_install = { 'org' },
-- })
