(require-macros :macros)

(pack! "https://github.com/folke/snacks.nvim")
(local snacks (require :snacks))
(snacks.setup {:indent {:indent {:enabled true :char "┆"}
                        :scope {:enabled true :only_current true}}
               :scroll {:animate {:duration {:step 15 :total 150}}}
               :explorer {}})
