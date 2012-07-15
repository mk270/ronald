class CSVDialect(object):
   def __init__(self, colsep=None, linesep=None, field_enclosure=None, 
                field_enclosure_optional=True, **opts):
      self.colsep = colsep
      self.linesep = linesep
      self.opts = opts
      self.field_enclosure = field_enclosure
      self.field_enclosure_optional = field_enclosure_optional

   def asdict(self):
      tmp = {
         'colsep': self.colsep,
         'linesep': self.linesep,
         'fieldenc': self.field_enclosure,
         'encopt': self.field_enclosure_optional
         }
      tmp.update(self.opts)
      return tmp

   def __str__(self):
      return json.dumps(self.asdict(), indent=2)
