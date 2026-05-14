export type Show = {
  date: string; // YYYY-MM-DD
  city: string;
  venue: string;
  country?: string;
  ticketUrl?: string;
  note?: string;
};

export const shows: Show[] = [
  {
    date: "2026-06-05",
    city: "Bad Tölz",
    venue: "Rosengarten",
    note: "Support für Elena Rud"
  },
  {
    date: "2026-06-07",
    city: "Bad Tölz",
    venue: "Rosengarten"
  }
];
