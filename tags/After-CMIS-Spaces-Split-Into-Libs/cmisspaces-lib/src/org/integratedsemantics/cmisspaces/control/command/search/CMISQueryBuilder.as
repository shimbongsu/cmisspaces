package org.integratedsemantics.cmisspaces.control.command.search
{
    import com.ericfeminella.collections.StringTokenizer;
    
    import flash.utils.Dictionary;
    
    import mx.collections.ArrayCollection;
    import mx.utils.StringUtil;
    
    import org.integratedsemantics.flexspaces.control.command.search.QueryBuilder;
    import org.integratedsemantics.flexspaces.model.repo.RepoQName;
    
    
    public class CMISQueryBuilder extends QueryBuilder
    {
        /**
         * Constructur 
         */
        public function CMISQueryBuilder()
        {
            super();
        }
            
        /**
         * Build the search query string based on the current search context members.
         * 
         * @param minimum       small possible textual string used for a match
         *                      this does not effect fixed values searches (e.g. boolean, int values) or date ranges
         * 
         * @return prepared search query string
         */
        override public function buildQuery(minimum:int):String
        {
            var query:String = "";
            var validQuery:Boolean = false;
          
            // TODO
          
            return query;
        }
                        
    }

}