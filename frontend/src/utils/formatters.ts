/**
 * Utilitários de formatação e máscaras para o Intercred Modernization (React/TS)
 * - Uso: import { Formatters } from "@utils/formatters";
 * - Regras: 1 classe por arquivo, helpers estáticos, sem dependências externas.
 * - Cobertura: moeda, número, data, CPF/CNPJ, CEP, telefone, extenso (básico), helpers de máscara.
 */

export class Formatters {
  // Formata número para moeda BRL (R$ 1.234,56)
  static currency(value: number | string, options?: Intl.NumberFormatOptions): string {
    const num = typeof value === "string" ? parseFloat(value.replace(/[^\d,.-]/g, "").replace(",", ".")) : value;
    if (isNaN(num)) return "";
    return num.toLocaleString("pt-BR", {
      style: "currency",
      currency: "BRL",
      minimumFractionDigits: 2,
      maximumFractionDigits: 2,
      ...options,
    });
  }

  // Formata número genérico (milhares, decimais)
  static number(value: number | string, fractionDigits = 2): string {
    const num = typeof value === "string" ? parseFloat(value.replace(/[^\d,.-]/g, "").replace(",", ".")) : value;
    if (isNaN(num)) return "";
    return num.toLocaleString("pt-BR", {
      minimumFractionDigits: fractionDigits,
      maximumFractionDigits: fractionDigits,
    });
  }

  // Formata data para dd/MM/yyyy
  static date(value: string | Date | null | undefined): string {
    if (!value) return "";
    const date = value instanceof Date ? value : new Date(value);
    if (isNaN(date.getTime())) return "";
    return date.toLocaleDateString("pt-BR");
  }

  // Formata data/hora para dd/MM/yyyy HH:mm
  static datetime(value: string | Date | null | undefined): string {
    if (!value) return "";
    const date = value instanceof Date ? value : new Date(value);
    if (isNaN(date.getTime())) return "";
    return (
      date.toLocaleDateString("pt-BR") +
      " " +
      date.toLocaleTimeString("pt-BR", { hour: "2-digit", minute: "2-digit" })
    );
  }

  // Máscara de CPF (999.999.999-99)
  static cpf(value: string): string {
    const digits = value.replace(/\D/g, "").slice(0, 11);
    if (digits.length <= 3) return digits;
    if (digits.length <= 6) return digits.replace(/(\d{3})(\d+)/, "$1.$2");
    if (digits.length <= 9) return digits.replace(/(\d{3})(\d{3})(\d+)/, "$1.$2.$3");
    return digits.replace(/(\d{3})(\d{3})(\d{3})(\d{1,2})/, "$1.$2.$3-$4");
  }

  // Máscara de CNPJ (99.999.999/9999-99)
  static cnpj(value: string): string {
    const digits = value.replace(/\D/g, "").slice(0, 14);
    if (digits.length <= 2) return digits;
    if (digits.length <= 5) return digits.replace(/(\d{2})(\d+)/, "$1.$2");
    if (digits.length <= 8) return digits.replace(/(\d{2})(\d{3})(\d+)/, "$1.$2.$3");
    if (digits.length <= 12) return digits.replace(/(\d{2})(\d{3})(\d{3})(\d+)/, "$1.$2.$3/$4");
    return digits.replace(/(\d{2})(\d{3})(\d{3})(\d{4})(\d{1,2})/, "$1.$2.$3/$4-$5");
  }

  // Máscara de CPF ou CNPJ (auto)
  static cpfCnpj(value: string): string {
    const digits = value.replace(/\D/g, "");
    if (digits.length <= 11) return Formatters.cpf(digits);
    return Formatters.cnpj(digits);
  }

  // Máscara de CEP (99999-999)
  static cep(value: string): string {
    const digits = value.replace(/\D/g, "").slice(0, 8);
    if (digits.length <= 5) return digits;
    return digits.replace(/(\d{5})(\d{1,3})/, "$1-$2");
  }

  // Máscara de telefone (com DDD, 8 ou 9 dígitos)
  static phone(value: string): string {
    const digits = value.replace(/\D/g, "").slice(0, 11);
    if (digits.length <= 2) return digits;
    if (digits.length <= 6) return digits.replace(/(\d{2})(\d+)/, "($1) $2");
    if (digits.length <= 10)
      return digits.replace(/(\d{2})(\d{4})(\d{0,4})/, "($1) $2-$3").replace(/-$/, "");
    return digits.replace(/(\d{2})(\d{5})(\d{0,4})/, "($1) $2-$3").replace(/-$/, "");
  }

  // Remove máscara de qualquer campo (devolve só dígitos)
  static unmask(value: string): string {
    return value.replace(/\D/g, "");
  }

  // Extenso básico para valores até 999999 (apenas reais, sem centavos)
  static extenso(valor: number): string {
    // Adaptado de UExtenso.pas (Delphi)
    const unidades = [
      "",
      "um",
      "dois",
      "três",
      "quatro",
      "cinco",
      "seis",
      "sete",
      "oito",
      "nove",
      "dez",
      "onze",
      "doze",
      "treze",
      "quatorze",
      "quinze",
      "dezesseis",
      "dezessete",
      "dezoito",
      "dezenove",
    ];
    const dezenas = [
      "",
      "",
      "vinte",
      "trinta",
      "quarenta",
      "cinquenta",
      "sessenta",
      "setenta",
      "oitenta",
      "noventa",
    ];
    const centenas = [
      "",
      "cento",
      "duzentos",
      "trezentos",
      "quatrocentos",
      "quinhentos",
      "seiscentos",
      "setecentos",
      "oitocentos",
      "novecentos",
    ];

    function extensoMenor1000(n: number): string {
      let texto = "";
      if (n === 100) return "cem";
      if (n > 99) {
        texto += centenas[Math.floor(n / 100)];
        n = n % 100;
        if (n > 0) texto += " e ";
      }
      if (n > 19) {
        texto += dezenas[Math.floor(n / 10)];
        n = n % 10;
        if (n > 0) texto += " e ";
      }
      if (n > 0 && n < 20) {
        texto += unidades[n];
      }
      return texto;
    }

    if (valor === 0) return "zero real";
    if (valor > 999999) return "valor fora da faixa";

    let inteiro = Math.floor(valor);
    let texto = "";

    if (inteiro >= 1000) {
      const milhar = Math.floor(inteiro / 1000);
      texto += extensoMenor1000(milhar) + " mil";
      inteiro = inteiro % 1000;
      if (inteiro > 0) texto += " e ";
    }
    if (inteiro > 0) {
      texto += extensoMenor1000(inteiro);
    }
    texto = texto.trim();
    if (texto.endsWith(" e")) texto = texto.slice(0, -2).trim();
    if (Math.floor(valor) === 1) texto += " real";
    else if (Math.floor(valor) > 1) texto += " reais";
    return texto;
  }

  // Helper para aplicar máscara de input (ex: para React Hook Form)
  static applyMask(value: string, mask: (v: string) => string): string {
    return mask(value);
  }
}

export default Formatters;