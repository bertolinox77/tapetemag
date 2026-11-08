CREATE TABLE public.pedidos (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at timestamptz NOT NULL DEFAULT now(),
  nome text NOT NULL, email text NOT NULL, telefone text NOT NULL, cpf text NOT NULL,
  cep text NOT NULL, endereco text NOT NULL, numero text NOT NULL, complemento text,
  bairro text NOT NULL, cidade text NOT NULL, estado text NOT NULL,
  quantidade integer NOT NULL, forma_pagamento text NOT NULL DEFAULT 'pix',
  total_centavos integer NOT NULL, status text NOT NULL DEFAULT 'aguardando_pix',
  pix_conferido_em timestamptz
);
GRANT ALL ON public.pedidos TO service_role;
ALTER TABLE public.pedidos ENABLE ROW LEVEL SECURITY;