export type Show = {
  date: string; // YYYY-MM-DD
  city: string;
  venue: string;
  country?: string;
  ticketUrl?: string;
  note?: string;
  type?: string; // Event-Typ, z. B. "Hochzeit", "Stadtfest", "Firmenfeier", "Open Air"
};

// Vergangene Termine bleiben in der Liste — sie erscheinen automatisch
// unter „Wo wir schon gespielt haben".
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
