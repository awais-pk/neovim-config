local dart_capabilities = vim.lsp.protocol.make_client_capabilities()
dart_capabilities.textDocument.codeAction = {
  dynamicRegistration = false;
      codeActionLiteralSupport = {
          codeActionKind = {
              valueSet = {
                 "",
                 "quickfix",
                 "refactor",
                 "refactor.extract",
                 "refactor.inline",
                 "refactor.rewrite",
                 "source",
                 "source.organizeImports",
              };
          };
      };
}
require'lspconfig'.dartls.setup{
    cmd = { "dart", O.dart.sdk_path, "--lsp" },
    on_attach = require'lsp'.common_on_attach,
    init_options = {
      closingLabels = true, --false
      flutterOutline = true, --false
      onlyAnalyzeProjectsWithOpenFiles = true, --false
      outline = false,
      suggestFromUnimportedLibraries = false, --true
    },
  capabilities = dart_capabilities;
    -- root_dir = root_pattern("pubspec.yaml"),
}
-- local dart_capabilities = vim.lsp.protocol.make_client_capabilities()
-- dart_capabilities.textDocument.codeAction = {
--   dynamicRegistration = false;
--       codeActionLiteralSupport = {
--           codeActionKind = {
--               valueSet = {
--                  "",
--                  "quickfix",
--                  "refactor",
--                  "refactor.extract",
--                  "refactor.inline",
--                  "refactor.rewrite",
--                  "source",
--                  "source.organizeImports",
--               };
--           };
--       };
-- }

-- require'lspconfig'.dartls.setup({
--   on_attach = dart_attach;
--   init_options = {
--     onlyAnalyzeProjectsWithOpenFiles = true,
--     suggestFromUnimportedLibraries = false,
--     closingLabels = true,
--   };
--   capabilities = dart_capabilities;
-- })
